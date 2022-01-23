//
//  rectangle.swift
//  221023
//
//  Created by JUNGMIN KIM on 2022/01/23.
//

import Foundation

struct Rectangle {
    var leftTopX = Int()
    var leftTopY = Int()
    var rightBottomX = Int()
    var rightBottomY = Int()
    func printRect(){
        print("LeftTop:(\(leftTopX),\(leftTopY)) RightTop:(\(rightBottomX),\(leftTopY)) LeftBottom:(\(leftTopX),\(rightBottomY)) RightBottom:(\(rightBottomX),\(rightBottomY))")
    }
}
