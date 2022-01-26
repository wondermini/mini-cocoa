//
//  reRectangle.swift
//  221023
//
//  Created by JUNGMIN KIM on 2022/01/24.
//

import Foundation


struct ReRectangle {
    init (startPoint: MyPiont, width: Float, height: Float) {
        self.leftTopPoint = startPoint
        self.rightBottomPoint = MyPiont(myX: self.leftTopPoint.myX+width, myY: self.leftTopPoint.myY - height)
    }
    var leftTopPoint = MyPiont(myX: 0, myY: 0)
    var rightBottomPoint = MyPiont(myX: 0, myY: 0)
    func printRect(){
        print("LeftTop:(\(leftTopPoint.myX),\(leftTopPoint.myY)) RightTop:(\(rightBottomPoint.myX),\(leftTopPoint.myY)) LeftBottom:(\(leftTopPoint.myX),\(rightBottomPoint.myY) RightBottom:(\(rightBottomPoint.myX),\(rightBottomPoint.myY))")
    }
    func printArea(){
        print("Area:\((leftTopPoint.myY - rightBottomPoint.myY)*(rightBottomPoint.myX - leftTopPoint.myX))")
    }
}

