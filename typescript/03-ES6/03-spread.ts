// 在数组中使用
const arr: number[] = [1, 2, 3];
const moreArr: number[] = [...arr, 4, 5, 6];
console.log(moreArr);

// 在对象中使用
const obj = {f1: 'f1', f2: 'f2'};
const moreObj = {...obj, f3: 'f3'};
console.log(moreObj);

// 在函数中使用
const func = (...args: any) => {
	console.log(...args);
};
func(1, 2, 3, 4);

// 使用 ... 实现克隆操作
const obj2 = {f1: 'f1', f2: 'f2'};
const copiedObj2 = {...obj2};
console.log(copiedObj2);

// 实现数组的 concat
const arr1 = [1, 2, 3];
const arr2 = [4, 5, 6];
console.log([...arr1, ...arr2]);



