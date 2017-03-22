//: Playground - noun: a place where people can play

import UIKit
import Foundation

var testString = "My long string for test and find char 123"

var count = 0
var index = 0
var charFind = "r"
for c in testString.characters {
  if "\(c)".lowercased() == charFind.lowercased() {
    count += 1
    print("for \(c) index: \(index)")
  }
  index += 1
}
print("\(charFind): \(count) times")

let a = 12
let b = "33"
let c = "a123"

let a1 = Int(a)
let b1 = Int(b) ?? 0
let c1 = Int(c) ?? 0

var sum = a1 + b1 + c1
print("\(a1) + \(b1) + \(c1) = \(sum)")


