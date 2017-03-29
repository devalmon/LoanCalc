//: Playground - noun: a place where people can play

import UIKit

enum Action {
  case Walk(meter: Int)
  case Run(meter: Int, speed: Double)
  case Stop
  case Turn(direction: Direction)
  
  enum Direction: String{
      case Left = "Left!"
      case Right = "Rigth!"
    }
}

var action = Action.Run(meter: 20, speed: 10.0)

//action = .Stop
//action = .Walk(meter: 150)
//action = .Run(meter: 1000, speed: 12.5)
action = .Turn(direction: .Left)


switch action {
case .Stop: print("Stop")
case .Walk(let meters) where meters < 100:
  print("short walk")
case .Walk(let meters):
  print("long walk")
case .Run(let meters, let speed):
  print("run \(meters)m with \(speed)kmh")
case .Turn(let dir) where dir == .Left:
  print("Turn left")
case .Turn(let dir) where dir == .Right:
  print("Turn right")
  
default: break
}
