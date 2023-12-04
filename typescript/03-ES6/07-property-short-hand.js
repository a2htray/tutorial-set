// 属性短标签
var a = 1;
var b = 2;
var obj = { a: a, b: b };
console.log(obj);
var func1 = function () {
    console.log('hello');
};
var func2 = function () {
    console.log('ciao');
};
var handler = {
    func1: func1,
    func2: func2,
};
handler.func1();
handler.func2();
