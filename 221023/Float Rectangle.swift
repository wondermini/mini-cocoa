//
//  Float Rectangle.swift
//  221023
//
//  Created by JUNGMIN KIM on 2022/01/24.
//

import Foundation


struct FloatRectangle {
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
    func printCenter(){
        print("Center:(\((rightBottomX - leftTopX)/2 + leftTopX),\((leftTopY - rightBottomY)/2+rightBottomY))")
    }
}
