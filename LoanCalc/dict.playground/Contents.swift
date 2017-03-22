//////////////////////////students//////////////////////////
var students = ["Ivanov Ivan" : 5, "Petrov Petr" : 4, "Sidorov Max" : 5]

for (name, value) in students {
//  print("\(name) got \(value) for exam")
}

for item in students.keys {
//  print("\(item) got \(students[item]!) for exam")
}




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
/////////////

