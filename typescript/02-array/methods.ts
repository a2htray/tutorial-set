// concat 拼接数组
// 不同元素类型的数组不能使用 concat 进行拼接
const nums: number[] = [1, 2, 3, 4]
const numStrs: string[] = ['1', '2', '3']
console.log('concat', nums.map(item => {
	return '' + item
}).concat(numStrs))

// every 检测数组中的元素是否都符合测试函数
const names: string[] = ['Ann', 'Andy', 'Bob']
console.log('every', names.every(item => item[0] === 'A'))

// filter 过滤
console.log('filter', names.filter(item => item[0] === 'A'))

// forEach 对数组元素逐一调用函数
names.forEach(item => {
	console.log('forEach', 'hello, ' + item)
})

// indexOf 取元素索引
console.log('indexOf', names.indexOf('Ann') !== -1)

// join 拼接数组元素
console.log('join', names.join(':'))

// lastIndexOf 从后取元素索引
console.log('lastIndexOf', names.lastIndexOf('Ann'))

// map 逐一对元素调用函数并将返回值作为新的数组
names.map(item => {
	return 'hello, ' + item
}).forEach(item => {
	console.log('map', item)
})

// pop 从数组中弹出最后一个元素
const item: string = names.pop()
console.log('pop', item)
console.log('调用 pop 后', names)

// push 向后添加元素
names.push('Bob')
console.log('调用 push 后', names)

// reduce
console.log('reduce', names.reduce((item1, item2) => {
	return item1 + item2
}))

// reduceRight
console.log('reduceRight', names.reduceRight((item1, item2) => {
	return item1 + item2
}))

// reverse 元素倒序
names.reverse()
console.log('reverse', names)

// shift 删除数组中的第 1 个元素，并返回
const ret: string = names.shift()
console.log('shift', ret)

// slice 取子数组
const alphabets: string[] = ['a', 'b', 'c', 'd', 'e']
console.log('slice', alphabets.slice(2, 4))

// some 返回 true，如果有一个元素使测试函数成功
console.log('some', alphabets.some(item => {
	return item === 'a'
}))

// sort 数据排序
alphabets.reverse()
alphabets.sort()
console.log('sort', alphabets)

// splice 删除或替换数组元素
console.log('splice', alphabets.splice(0, 2, 'x', 'y', 'z'))

// toString
console.log('toString', alphabets.toString())

// unshift 向前添加 1 个或多个元素
alphabets.unshift('a', 'b')
console.log('unshift', alphabets)

