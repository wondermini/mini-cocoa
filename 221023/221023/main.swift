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
