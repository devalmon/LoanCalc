//: Playground - noun: a place where people can play

import UIKit

let daysArray = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let monthArray = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]
var count = 0
for i in 0..<monthArray.count {
//  print("\(monthArray[i]) - \(daysArray[i])")
  count += daysArray[i]
}
//print("total days: \(count)")

let filteredRes = monthArray.filter{$0.hasPrefix("a")}
filteredRes

let numbers = daysArray.map{Float($0)}
let avg = numbers.reduce(0, +) / Float(daysArray.count)
avg


var counter = monthArray.count - 1
while counter >= 0 {
//  print("\(monthArray[counter]) - \(daysArray[counter])")
  counter -= 1
}

var tuples = [(String, Int)]()
for i in 0..<daysArray.count {
  let month = (month: monthArray[i], day: daysArray[i])
  tuples.append(month)
}
tuples


let alphabet: [Character] = ["a", "b", "c", "d"]
var alphabetString: [String] = []

alphabet
var i = alphabet.count - 1
while i >= 0 {
  alphabetString.append("\(alphabet[i])")
  i -= 1
}
alphabetString

let optInt: [Int?] = [4, 5, nil, 2, nil, 9]
var sum = 0
for i in 0..<optInt.count {
  sum += optInt[i] ?? 0
}
sum


var revAlf = [String]()

for c in alphabet {
  revAlf.insert(String(c), at: 0)
}
revAlf


let ints = optInt.flatMap{$0}
let avgInts = ints.reduce(0, +)
avgInts
let randNumber = arc4random() % 100









