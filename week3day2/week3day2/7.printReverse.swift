//
//  7.printReverse.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation

func printReverse(lines: Int) {
    var tempValue = 0

    for i in 1...lines {
        var tempArr = [Int]()
        for _ in 1...lines {
            tempValue += 1
            // 값 하나를 넣을때는 append로
            tempArr.append(tempValue)
        }
        if i % 2 == 0 {
            // 순서를 뒤집은 Array 전체를 넣어줄땐 =
            tempArr = tempArr.sorted(by: >)
        }
        for j in tempArr {
            print(String(format: "%-2d", j), terminator: " ")
            /*
             if j<10{
                 print(" ", terminator: "")
             }
              */
        }
        print()
    }
}
