// 变量声明 let 和 const
// let 在当前作用域中声明变量
let x = 1;
{
	let x = 2;
	console.log('x = ', x); // x = 2
}
console.log('x = ', x); // x = 1

// 对于 var 声明，则没有作用域的概念，变量值会被最后一次声明覆盖
var x2 = 1;
{
	var x2 = 2;
}
console.log('x2 = ', x2);

// const 用于申明常量，变量赋值后不可再被修改
const x3 = 1;


