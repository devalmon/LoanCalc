import UIKit
//////////////////////////students//////////////////////////
var students = ["Ivanov Ivan" : 5, "Petrov Petr" : 4, "Sidorov Max" : 5]

for (name, value) in students {
//  print("\(name) got \(value) for exam")
}

for item in students.keys {
//  print("\(item) got \(students[item]!) for exam")
}

students["Jobs Steve"] = 5
students["Cook Tim"] = 4

students.removeValue(forKey: "Cook Tim")
students.updateValue(4, forKey: "Gates Bill")
students.updateValue(5, forKey: "Gates Bill")
students


/////////////////////////////days and month//////////////////
let daysArray = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let monthArray = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]

var daysInMonth = [(String, Int)]()
for i in 0..<daysArray.count {
  let item = (monthArray[i], daysArray[i])
  daysInMonth.append(item)
}

var totalScore = 0, avgScore = 0
for key in students.keys {
  totalScore += students[key]!
}

avgScore = totalScore / students.count

totalScore
avgScore

/////////bubble sort/////////////////////
func bubbleSort(array:[Int]) -> [Int] {
  var sortedArray = array
  var tmp = 0
  
  for i in 0..<sortedArray.count {
    for j in 0..<sortedArray.count {
      if sortedArray[j] > sortedArray[i] {
        tmp = sortedArray[i]
        sortedArray[i] = sortedArray[j]
        sortedArray[j] = tmp
      }
    }
  }
  return sortedArray
}

/////////////chess//////////
var chessDict: [String : Bool]
let letters = "a b c d e f g h"
let charLetters = letters.components(separatedBy: " ")
var coordinates = ""
let numbers = 8

for i in charLetters {
  for j in 1...8 {
    coordinates.append("\(i)\(j) ")
  }
}
coordinates
let coordArray = coordinates.components(separatedBy: " ")

var blackWhite: [Bool]

for i in 0..<coordArray.count {
}

//////func and closures///////
func jediGreed(name: String, ability: String) -> (farewell: String, mayBeForceWithYou: String) {
  return ("Good bye \(name)", "May the \(ability) be with you")
}
let retVal = jediGreed(name: "Alex", ability: "Force")
retVal.farewell
retVal.mayBeForceWithYou

func add(_ args: Int...) -> Int {
  var sum = 0
  for i in args {
    sum += i
  }
  return sum
}
add(3, 4, 5)



//////statistics///////////////
func statistics(scores: [Int]) -> (min: Int, max: Int, sum: Int, count: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  var count = 0
  
  for item in scores {
    count += 1
    sum += item
    if item < min {
      min = item
    } else {
      max = item
    }
  }
  
  return (min, max, sum, count)
}

statistics(scores: daysArray)








