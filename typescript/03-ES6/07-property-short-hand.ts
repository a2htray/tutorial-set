// 属性短标签
const a = 1;
const b = 2;
const obj = {a, b};
console.log(obj);

const func1 = () => {
	console.log('hello');
};
const func2 = () => {
	console.log('ciao');
};
const handler = {
	func1,
	func2,
};

handler.func1();
handler.func2();

