// 基础类型

// string
let name1 = 'a2htray'
let name2: string = 'a2htray'
let name3: String = 'a2htray'
console.log(`name1 的类型为 ${typeof name1}，name2 的类型为 ${typeof name2}，name3 的类型为 ${typeof name3}`)

// number
// int 和 float 类型在 TS 中均被认为是 number 类型
let age1 = 16
let age2: number = 16
let age3: Number = 16
console.log(`age1 的类型为 ${typeof age1}，age2 的类型为 ${typeof age2}，age3 的类型为 ${typeof age3}`)

let height1 = 145.5
let height2: number = 145.5
let height3: Number = 145.5
console.log(`height1 的类型为 ${typeof height1}，height2 的类型为 ${typeof height2}，height3 的类型为 ${typeof height3}`)

// boolean
let isMale1 = true
let isMale2: boolean = true
let isMale3: Boolean = true
console.log(`isMale1 的类型为 ${typeof isMale1}，isMale2 的类型为 ${typeof isMale2}，isMale3 的类型为 ${typeof isMale3}`)

// undefined
// undefined 的类型为 undefined
let var1 = undefined
let var2: undefined = undefined
console.log(`var1 的类型为 ${typeof var1}，var2 的类型为 ${typeof var2}`)

// null
// null 在 TS 中属于引用类型
let var3 = null
let var4: null = null
console.log(`var3 的类型为 ${typeof var3}，var3 的类型为 ${typeof var3}`)

