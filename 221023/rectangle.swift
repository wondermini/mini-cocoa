//
//  rectangle.swift
//  221023
//
//  Created by JUNGMIN KIM on 2022/01/23.
//

import Foundation

struct Rectangle {
    var leftTopX = Float()
    var leftTopY = Float()
    var rightBottomX = Float()
    var rightBottomY = Float()
    func printRect(){
        print("LeftTop:(\(leftTopX),\(leftTopY)) RightTop:(\(rightBottomX),\(leftTopY)) LeftBottom:(\(leftTopX),\(rightBottomY)) RightBottom:(\(rightBottomX),\(rightBottomY))")
    }
    func printArea(){
        print("Area:\((leftTopY - rightBottomY)*(rightBottomX - leftTopX))")
    }
    mutating func moveTo(delta: MyPiont){
        leftTopX += delta.myX
        leftTopY += delta.myY
        rightBottomX += delta.myX
        rightBottomY += delta.myY
    }
}

