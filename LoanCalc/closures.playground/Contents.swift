//: Playground - noun: a place where people can play

import UIKit

/*
 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
 
 2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
 
 
 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
 
 используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
 
 4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
 
 5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
 */

let array = [2, 4, 12, 23, 44, 5, 10, 88, 74, 0, -12, -133]
// MARK: -1
func testFunc(value: ()->()) {
  for i in 1...10 {
    print("\(i)", terminator: " ")
  }
  value()
}


// MARK: -2
array.sorted()
array.sorted(by: >)

// MARK: -3
func someFunc(list: [Int], f: (Int?, Int) -> Bool) -> Int {
  var num: Int?
  for i in list {
    if f(num, i) {
      num = i
    }
  }
  return num ?? 0
}

let max = someFunc(list: array) {
  $0 == nil || $0! < $1
}
let min = someFunc(list: array) {
  $0 == nil || $0! > $1
}

// MARK: -4
let str = "asdlfj2lsdkfj233)(&sdSDFLKjdfdflF"
var letterArray = [String]()
for letter in str.characters {
  letterArray.append(String(letter))
}

func priority(string: String) -> Int {
  switch string.lowercased() {
  case "a", "e", "i", "j", "o", "u", "y": return 0
  case "a"..."z": return 1
  case "0"..."9": return 2
  default: return 3
  }
}

let x = ","
let y = "a"



let sortedArray =
  letterArray.sorted {
    switch (priority(string: $0), priority(string: $1)) {
    case let (a, b) where a < b:
      return true
    case let (a, b) where a > b:
      return false
    default:
      return $0.lowercased() <= $1.lowercased()
    }
}
// MARK: -5