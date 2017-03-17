//: Playground - noun: a place where people can play

import UIKit

func sumOfNum (numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOfNum(numbers: 2,3,0,23)

func returFifteen() -> Int {
    var y = 10
    func addFive() {
        y += 5
    }
    addFive()
    return y
}

//print(returFifteen())

let padawans = ["Knox", "Tom", "Jack"]
padawans.map({
    (padawan: String) -> String in
    "\(padawan) has been trained!"
})


func jediTrainer() -> ((String, Int) -> String) {
    func train(name: String, times: Int) -> (String) {
        return "\(name) has been trained in Force \(times) times"
    }
    return train
}
let train = jediTrainer()
print(train("Obi Wan", 3))

func jediBladeColore(_ colores: String...) -> () {
    print("\(colores.count) args in colores")
    for colore in colores {
        print("\(colore)")
    }
}
jediBladeColore("Red", "Green", "Black")

func applyMultiplication(_ value: Int, multFunction: (Int) -> Int) -> Int {
    return multFunction(value)
}

//applyMultiplication(3, multFunction: {value in value * 4})
print("\(applyMultiplication(2) {$0 * 3})")

