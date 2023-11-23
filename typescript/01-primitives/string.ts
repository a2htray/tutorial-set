// 模板字符串
let username: string = 'a2htray'
let gender: string = 'male'
let introduction: string = `(template string) My name is ${username} who is ${gender}`
console.log(introduction)

// string 方法

const sentence: string = 'my name is a2htray'

// charAt 返回指定位置的字符
console.log('charAt', sentence.charAt(4))

// charCodeAt 返回指定位置字符的 Unicode 值
console.log('charCodeAt', sentence.charCodeAt(4))

// concat 字符串拼接
console.log('concat', sentence.concat('a', 'b', 'c'))

// indexOf 返回子串在字符串中最初匹配的第一个字符位置
console.log('indexOf', sentence.indexOf('name'))

// lastIndexOf 返回子串在字符串中最后匹配的第一个字符位置
console.log('lastIndexOf', sentence.lastIndexOf('a'))

// localeCompare 返回字符串的排序关系
const apple: string = 'apple'
const banana: string = 'banana'
// 字符 b 排在字符 a 的后面，所以返回 -1
console.log('localeCompare', apple.localeCompare(banana)) // -1
// 字符 a 排在字符 b 的前面，所以返回 1
console.log('localeCompare', banana.localeCompare(apple)) // 1

// match 正则匹配
const rect: string = '(1, 1), (2, 2)'
rect.match(/\(\d,\s\d\)/).map((match: string) => {
	console.log('match', match)
})
// g 匹配全文
rect.match(/\(\d,\s\d\)/g).map((match: string) => {
	console.log('match', match)
})

// replace 通过正则匹配到字符串并替换
const circle: string = '(2, 2), 4'
console.log('replace', circle.replace(/\(\d,\s\d\)/, '(6, 6)'))

// search 正则搜索，返回匹配项的索引
// 若无匹配项，则返回 -1
const car: string = 'Benz'
console.log('search', car.search('en'))

// slice 字符串截取，包含开始索引上的元素，不包含结束索引上的元素
console.log('slice', sentence.slice(0, 7))

// split 分割字符串，返回一个数组
// 第 2 个参数指定分割次数
sentence.split(' ').map((word: string) => {
	console.log('split', word)
})
sentence.split(' ', 3).map((word: string) => {
	console.log('split', word)
})

// substr 子串截取，第 2 个参数为要截取子串的长度
console.log('substr', sentence.substr(0, 2))

// substring 按索引截取
console.log('substring', sentence.substring(0, 2))

// toLocaleLowerCase 小写
console.log('toLocaleLowerCase', sentence.toLocaleLowerCase())

// toLocaleUpperCase 大写
console.log('toLocalUpperCase', sentence.toLocaleUpperCase())

// toLowerCase 小写
console.log('toLowerCase', sentence.toLowerCase())

// toUpperCase 大写
console.log('toUpperCase', sentence.toUpperCase())

// toString 字符串
console.log('toString', sentence.toString())

// valueOf 取值
console.log('valueOf', sentence.valueOf())





