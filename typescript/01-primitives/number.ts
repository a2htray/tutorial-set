// number 方法

const num: number = 1024

// toExponential 数值的指数表示
// 第 1 个参数指定小数点后位数
console.log('toExponential', num.toExponential(3))

// toFixed 指定小数点位数
console.log('toFixed', num.toFixed(2))

// toLocaleString 返回本地化数值表示
console.log('toLocaleString', num.toLocaleString())

// toPrecision 指定精度，小数点前也算
console.log('toPercision', num.toPrecision(6))

// toString
console.log('toString', num.toString(), 'type', typeof num.toString())

// valueOf
console.log('valueOf', num.valueOf())
