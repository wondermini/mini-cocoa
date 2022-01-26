//
//  main.swift
//  221023
//
//  Created by JUNGMIN KIM on 2022/01/23.
//

import Foundation

print("Hello, World!")

var myRectangle = Rectangle()
myRectangle.leftTopX = 5
myRectangle.leftTopY = 11
myRectangle.rightBottomX = 15
myRectangle.rightBottomY = 4

myRectangle.printRect()
myRectangle.printArea()

var myFloatRec = FloatRectangle()
myFloatRec.leftTopX = 4.5
myFloatRec.leftTopY = 10.5
myFloatRec.rightBottomX = 15
myFloatRec.rightBottomY = 3.5

myFloatRec.printRect()
myFloatRec.printCenter()

var pointA = MyPiont()
pointA.myX = 2.5
pointA.myY = 15.8

pointA.printPoint()

pointA.setX(x: 15.2)
pointA.setY(y: 7.4)

print("pointA=(\(pointA.myX),\(pointA.myY))")

 
var pointB = MyPiont(myX: 15.0, myY: 12.2)
print(pointA.getDistanceTo(toPoint: pointB))


//var myReRectangle = ReRectangle()
//myReRectangle.printRect()
//myReRectangle.printArea()

var rectB = ReRectangle(startPoint: MyPiont(myX: 5, myY: 5), width: 5.0, height: 10.0)
rectB.printRect()
