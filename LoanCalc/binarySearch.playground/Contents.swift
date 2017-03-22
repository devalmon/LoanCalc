//: Playground - noun: a place where people can play

import UIKit

func makeArr(n: Int) -> [Int] {
    var res: [Int] = []
    for _ in 0 ..< n {
        res.append(Int(arc4random_uniform(50) + 1))
    }
    return res
}

var arr = makeArr(n: 100)
arr.sort()

func countOccurrences(_ searchVal: Int, inArray arr: [Int]) -> Int {
    func leftBound() -> Int {
        var low = 0
        var high = arr.count
        while low < high {
            let mid = low + (high - low)/2
            if arr[mid] < searchVal {
                low = mid + 1
            } else {
                high = mid
            }
        }
        return low
    }
    
    func rightBound() -> Int {
        var low = 0
        var high = arr.count
        while low < high {
            let mid = low + (high - low)/2
            if arr[mid] > searchVal {
                high = mid
            } else {
                low = mid + 1
            }
        }
        return low
    }
    
    return rightBound() - leftBound()
}


let myArray = [1,2,3,5,5,5,7,8,9]

countOccurrences(1, inArray: myArray)


let randomIndex = Int(arc4random_uniform(UInt32(arr.count) - 1))
let randomNo = arr[randomIndex]

countOccurrences(randomNo, inArray: arr)


