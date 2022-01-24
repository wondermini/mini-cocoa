//
//  MyPoint.swift
//  221023
//
//  Created by JUNGMIN KIM on 2022/01/24.
//

import Foundation

struct MyPiont {
    var myX = Float()
    var myY = Float()
    func printPoint() {
        print("Mypoint:(\(myX),\(myY))")
    }

    mutating func setX(x: Float) {
        myX = x
    }

    mutating func setY(y: Float) {
        myY = y
    }
}
