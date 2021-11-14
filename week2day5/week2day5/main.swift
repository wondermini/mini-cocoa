//
//  main.swift
//  week2day5
//
//  Created by JUNGMIN KIM on 2021/11/12.
//

import Foundation
// m6.
func printSquare(columns: Int) {
    var temp = 0
    for _ in 1...columns {
        for _ in 1...columns {
            temp += 1
            if temp<10 {
                print(" ", terminator: "")
            }
            print(temp, terminator: " ")
        }
        print()
    }
}

printSquare(columns: 5)
// m7.
func printReverse(lines: Int) {
    var temp = 0

    for i in 1...lines {
        var array = [Int]()
        for _ in 1...lines {
            temp += 1
            array.append(temp)
        }
        if i % 2 == 0 {
            array = array.reversed()
        }
        for a in array {
            if a<10 {
                print("", terminator: " ")
            }
            print(a, terminator: " ")
        }
        print()
    }
}

printReverse(lines: 5)
