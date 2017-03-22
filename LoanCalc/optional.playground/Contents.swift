//Wrap-unwarp-concatenation

//import Foundation

var a = "ABC"
var b = "abc12"
var c = "14"
var d = "1"
var e = "1314"
var sum = (Int(a) ?? 0) + (Int(b) ?? 0) + (Int(c) ?? 0) + (Int(d) ?? 0) + (Int(e) ?? 0)
print("\(a) + \(b) + \(c) + \(d) + \(e) = \(sum)")




/*



//work with tuples
var response: (statusCode: Int?, message:String?, errorMessage:String?)
response = (300, "OK", "Error")
if response.statusCode != nil {
    let uCode = response.statusCode!
    if response.message != nil {
        let uMessage = response.message!
        if response.errorMessage != nil {
            let uError = response.errorMessage!
            if uCode >= 200 && uCode < 300 {
                print("\(uCode) \(uMessage)")
            } else {
                print("\(uCode) \(uError)")
            }
        }
    }
}



//student tuples
//let student = (name:, nombercar, ocentcaKontrolnoi) all nil 5 tupels
let student1 = (name:"Vasilii", haveCar:true, result: 5)
let student2 = (name:"Ivan", haveCar:false, result: 4)
let student3 = (name:"Dmitry", haveCar:true, result: 3)
let student4 = (name:"Max", haveCar:false, result: 3)
let student5 = (name:"Alex", haveCar:true, result: 5)
//let student6 = (name: _, haveCar: _, result: _)

var h: Int

let text = "123asdf"

let n = Int(text)
/*
if n != nil {
    h = n!
} else {
    h = 0
}
*/
/*
if let opt = n {
    h = opt
} else {
    h = 0
}
*/
h = n ?? 0


//1. секунд от нач года до любого дня
//2. в каком квартале родился
//3. шахматная доска - цвет клетки
let blackRect = "Black"
let whiteRect = "White"
let coordinate: (x: Int, y: Int)
coordinate = (2, 5)

if coordinate.x % 2 == coordinate.y % 2 {
    print(blackRect)
} else {
    print(whiteRect)
}
*/

let heart = "\u{1f496}"

var fun: Character = "Ъ"

let combo: Character = "ы\u{301}\u{20dd}"
var funString = "my test string with super character \(combo)"

//(funString as NSString).length
funString.hasPrefix("m")









