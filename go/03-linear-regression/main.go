package main

import (
	"fmt"
	"gonum.org/v1/gonum/optimize"
	"gonum.org/v1/plot"
	"gonum.org/v1/plot/plotter"
	"gonum.org/v1/plot/vg"
	"gonum.org/v1/plot/vg/draw"
	"image/color"
	"log"
	"math"
	"math/rand"
)

func NormalRandomValues(n int, mu, sigma float64) []float64 {
	values := make([]float64, n)
	for i := 0; i < n; i++ {
		values[i] = rand.NormFloat64()*sigma + mu
	}
	return values
}

func Linspace(start, stop float64, n int) []float64 {
	if n <= 0 {
		return []float64{}
	}
	if n == 1 {
		return []float64{start}
	}
	values := make([]float64, n)
	step := (stop - start) / float64(n-1)
	for i := 0; i < n-1; i++ {
		values[i] = start + float64(i)*step
	}
	values[n-1] = stop
	return values
}

func LeastSquares(points plotter.XYs) (k, b float64) {
	n := points.Len()
	xSum, ySum, xySum, xxSum := 0., 0., 0., 0.
	for _, point := range points {
		xSum += point.X
		ySum += point.Y
		xySum += point.X * point.Y
		xxSum += point.X * point.X
	}

	xAvg, yAvg := xSum/float64(n), ySum/float64(n)
	k = (xySum - float64(n)*xAvg*yAvg) / (xxSum - float64(n)*xAvg*xAvg)
	b = yAvg - k*xAvg
	return
}

func WithOptimize(points plotter.XYs) (k, b float64) {
	problem := optimize.Problem{
		Func: func(x []float64) float64 {
			var sum float64
			for _, point := range points {
				y := x[0]*point.X + x[1]
				sum += 1.0 / 2.0 * math.Pow(y-point.Y, 2)
			}
			return sum
		},
	}
	result, err := optimize.Minimize(
		problem,
		[]float64{1, 1},
		&optimize.Settings{},
		&optimize.NelderMead{},
	)
	if err != nil {
		log.Fatal(err)
	}
	k = result.X[0]
	b = result.X[1]
	return
}

func main() {
	var k, b = 1.4, 2.0
	numOfPoints := 500
	errorValues := NormalRandomValues(numOfPoints, 0, 1)

	points := plotter.XYs{}
	for i, x := range Linspace(-10, 10, numOfPoints) {
		points = append(points, plotter.XY{
			X: x,
			Y: k*x + b + errorValues[i],
		})
	}

	colorCyan := color.RGBA{R: 0, G: 255, B: 255, A: 255}
	colorRed := color.RGBA{R: 255, G: 0, B: 0, A: 255}

	plt := plot.New()
	plt.X.Min, plt.X.Max, plt.Y.Min, plt.Y.Max = -11, 11, -18, 18
	plt.Add(&plotter.Scatter{
		XYs:            points,
		GlyphStyleFunc: nil,
		GlyphStyle: draw.GlyphStyle{
			Color:  colorCyan,
			Radius: 3,
			Shape:  draw.CircleGlyph{},
		},
	})

	err := plt.Save(5*vg.Inch, 5*vg.Inch, "scatter.png")
	if err != nil {
		log.Fatal(err)
	}

	kHat, bHat := LeastSquares(points)
	fmt.Println(kHat, bHat)

	linePoints := plotter.XYs{}
	linePoints = append(linePoints, plotter.XY{
		X: -10,
		Y: kHat*(-10) + bHat,
	})
	linePoints = append(linePoints, plotter.XY{
		X: 10,
		Y: kHat*(10) + bHat,
	})

	plt.Add(&plotter.Line{
		XYs:       linePoints,
		StepStyle: 10,
		LineStyle: draw.LineStyle{
			Color: colorRed,
			Width: 2,
		},
		FillColor: colorRed,
	})

	labels, err := plotter.NewLabels(&plotter.XYLabels{
		XYs:    []plotter.XY{{2, 2}},
		Labels: []string{fmt.Sprintf("y = %.2f*x + %.2f", kHat, bHat)},
	})

	if err != nil {
		log.Fatal(err)
	}
	plt.Add(labels)

	err = plt.Save(5*vg.Inch, 5*vg.Inch, "scatter-with-line.png")
	if err != nil {
		log.Fatal(err)
	}

	kHat, bHat = WithOptimize(points)
	fmt.Println(kHat, bHat)
}
