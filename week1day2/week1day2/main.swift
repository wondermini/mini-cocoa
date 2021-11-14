//
//  main.swift
//  week1day2
//
//  Created by JUNGMIN KIM on 2021/11/02.
//

import Foundation


//다시풀기
//연습문제1.
//1-1
struct Rectangle {
    //사각형을 구성하는 좌표에 대한 정보들을 property 선언.
    var leftTopX: Int
    var leftTopY: Int
    var rightBottomX: Int
    var rightBottomY: Int

    //사각형 네 점의 정보를 출력한다는 함수-method 선언.
    func printRect() {
        print("Left top(x:\(leftTopX),y:\(leftTopY))")
        print("Left bottom(x:\(leftTopX),y:\(rightBottomY))")
        print("Right top(x:\(rightBottomX),y:\(leftTopY))")
        print("Right bottom(x:\(rightBottomX),y:\(rightBottomY))")
    }
    func printArea() {
        let area = (rightBottomX - leftTopX) * (leftTopY - rightBottomY)
        print("Area: \(area)")
    }
}

//생성자!! 실제 값을 넣어서 사각형을 실체화한다. 실체화 한 것을 변수 rect라고 한다.
let rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
//1-2
rect.printRect()
//1-3
rect.printArea()
//1-4
struct RectangleFloat {
    //사각형을 구성하는 좌표에 대한 정보들을 property 선언.
    var leftTopX: Float
    var leftTopY: Float
    var rightBottomX: Float
    var rightBottomY: Float
  
    //사각형 네 점의 정보를 출력한다는 함수-method 선언.
    func printRect() {
        print("Left top(x:\(leftTopX),y:\(leftTopY))")
        print("Left bottom(x:\(leftTopX),y:\(rightBottomY))")
        print("Right top(x:\(rightBottomX),y:\(leftTopY))")
        print("Right bottom(x:\(rightBottomX),y:\(rightBottomY))")
    }
    func printArea() {
        let area = (rightBottomX - leftTopX) * (leftTopY - rightBottomY)
        print("Area: \(area)")
    }
    func printCenter() {
        let centerX: Float = (leftTopX + rightBottomX)/2
        let centerY: Float = (leftTopY + rightBottomY)/2
        print("Center(\(centerX),\(centerY))")
    }
}

//실제 값을 넣어서 사각형을 실체화한다. 실체화 한 것을 변수 rect라고 한다.
let rectFloat = RectangleFloat(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15, rightBottomY: 3.5)
//1-2
rect.printRect()
//1-3
rect.printArea()
//1-4
rectFloat.printArea()
//1-5
rectFloat.printCenter()

//연습문제2
//2-1
struct MyPoint{
    var myX: Float = 0
    var myY: Float = 0

    
    func printPoint(){
        print("(\(myX),\(myY))")
    }

    mutating func setX(to x:Float){
        myX = x
    }

    mutating func setY(to y:Float){
        myY = y
    }

    func getDistanceTo(toPoint : MyPoint) -> Float{
        let distanceX = (self.myX - pointB.myX)
        let distanceY = (self.myY - pointB.myY)
        return sqrt((distanceX * distanceX) + (distanceY * distanceY))
    }
}
var pointA = MyPoint(myX: 2.5, myY: 15.8)
var pointB = MyPoint(myX: 15, myY: 12.2)

pointA.printPoint()
//2-2
pointA.setX(to: 15.2)
pointA.setY(to: 7.4)
print("pointA=(\(pointA.myX),\(pointA.myY))")
//2-3

print("Distance=\(pointA.getDistanceTo(toPoint: pointB))")

//연습문제3
//3-1
struct RectangleMypoint {
    //사각형을 구성하는 좌표에 대한 정보들을 property 선언.
    var leftTop: MyPoint = MyPoint(myX: 0, myY: 0)
    var rightBottom: MyPoint = MyPoint(myX: 0, myY: 0)
    
    init(datumPoint: MyPoint, width: Float, height: Float){
        self.leftTop = datumPoint
        self.rightBottom.myX = datumPoint.myX + width
        self.rightBottom.myY = datumPoint.myY - height
    }
    
    //사각형 네 점의 정보를 출력한다는 함수-method 선언.
    func printRect() {
        print("Left top(x:\(leftTop.myX),y:\(leftTop.myY))")
        print("Left bottom(x:\(leftTop.myX),y:\(rightBottom.myY))")
        print("Right top(x:\(rightBottom.myX),y:\(leftTop.myY))")
        print("Right bottom(x:\(rightBottom.myX),y:\(rightBottom.myY))")
    }
    func printArea() {
        let area = (rightBottom.myX - leftTop.myX) * (leftTop.myY - rightBottom.myY)
        print("Area: \(area)")
    }
}

//실제 값을 넣어서 사각형을 실체화한다. 실체화 한 것을 변수 rect라고 한다.
//3-2
let rectB = RectangleMypoint(datumPoint:MyPoint(myX: 5,myY: 5), width: 5, height: 10)
rectB.printRect()
//3-3
struct RectangleMoveTo {
    //사각형을 구성하는 좌표에 대한 정보들을 property 선언.
    var leftTopX: Float
    var leftTopY: Float
    var rightBottomX: Float
    var rightBottomY: Float

    //사각형 네 점의 정보를 출력한다는 함수-method 선언.
    func printRect() {
        print("Left top(x:\(leftTopX),y:\(leftTopY))")
        print("Left bottom(x:\(leftTopX),y:\(rightBottomY))")
        print("Right top(x:\(rightBottomX),y:\(leftTopY))")
        print("Right bottom(x:\(rightBottomX),y:\(rightBottomY))")
    }
    func printArea() {
        let area = (rightBottomX - leftTopX) * (leftTopY - rightBottomY)
        print("Area: \(area)")
    }
    mutating func moveTo(delta: MyPoint){
        self.leftTopX += delta.myX
        self.leftTopY += delta.myY
        self.rightBottomX += delta.myX
        self.rightBottomY += delta.myY
    }
}
 var rectMoveTo = RectangleMoveTo(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)

rectMoveTo.moveTo(delta:MyPoint(myX: -3, myY: 1.5))
rectMoveTo.printRect()

//프로그램 흐름 제어하기
//연습문제
func whatIsGrade(point : Int)->Character {
    //90점 이상
    if point >= 90 {
        return "A"
    }
    //90점 미만 80점 이상
    if point >= 80 {
        return "B"
    }
    //80점 미만 70점 이상
    if point >= 70 {
        return "C"
    }
    //70점 미만 60점 이상
    if point >= 60 {
        return "D"
    }
    //60점 미만
    return "F"
}
print(whatIsGrade(point: 60))



let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"

func whatIsGrade2(point : Int)->Character {
    //90점 이상
    switch point {
    case 90..<101:
        return "A"
    //90점 미만 80점 이상
    case 80..<90:
        return "B"
    //80점 미만 70점 이상
    case 70..<80:
        return "C"
    //70점 미만 60점 이상
    case 60..<70:
        return "D"
    //60점 미만
    default:
        return "F"
    }
}
print (whatIsGrade2(point: 51))

//연습문제2

func gugu(dan : Int) {
    for i in 1...9{
        print("\(dan) X \(i) = \(dan * i)")
    }
// dan 값에 1 ~ 9까지 곱해서 출력하세요
}
gugu(dan:3)

func makeAll() {
    for i in 1...9{
        gugu(dan: i)
        print()
    }
// gugu() 함수를 1~9단까지 호출하세요
}
makeAll()

