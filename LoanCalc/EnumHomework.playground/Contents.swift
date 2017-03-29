//: Playground - noun: a place where people can play
import UIKit

/*
 1. Создать энум с шахматными фигруами (король, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
 
 2. Сделайте так, чтобы энумовские значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английское название. Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение. Используя эту функцию распечатайте все фигуры в массиве.
 
 3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
 
 4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.
 
 5. Следите чтобы ваш код был красивым!
 */

enum Figure: String {
  case king = "King"
  case queen = "Queen"
  case rook = "Rook"
  case bishop = "Bishop"
  case knight = "Knight"
  case pawn = "Pawn"
  
  enum Color: String {
    case black = "Black"
    case white = "White"
  }  
}
let whiteKing = Figure.king
let blackKing = Figure.king
let whiteQueen = Figure.queen
let blackQueen = Figure.queen
let whiteRook = Figure.rook
let blackRook = Figure.rook
let whiteBishop = Figure.bishop
let blackBishop = Figure.bishop
let whitePawn = Figure.pawn
let blackPawn = Figure.pawn

let figuresArray: [Figure] = [whiteKing, blackKing, whiteQueen, blackQueen, whiteRook, blackRook, whiteBishop, blackBishop, whitePawn, blackPawn]

func printFigures() {
  for item in figuresArray {
    print(item.rawValue)
  }
}

printFigures()







