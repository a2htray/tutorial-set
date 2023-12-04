// 解构操作

// 数组
const arr = [1, 2, 3];
const [a, b, c] = arr;
console.log(a, b, c);

// 对象
const obj = {f1: 'f1', f2: 'f2'};
const { f1, f2 } = obj;
console.log(f1, f2);

// 传参
interface ArgProps {
	name: string
	age: number
};
const func = ({name, age}: ArgProps) => {
	console.log(name, age);
};
func({name: 'Andy', age: 16});
