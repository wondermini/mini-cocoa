//
//  printReverse.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/04.
//

import Foundation

func printReverse(lines: Int) {
    var squareArray = [[Int]]()
    var num = 1
    for _ in 1...lines {
        var rowArray = [Int]()
        for _ in 1...lines {
            rowArray.append(num)
            num += 1
        }
        squareArray.append(rowArray)
    }

    // print(squareArray)

    for rowIndex in 0..<lines {
        if rowIndex % 2 == 0 {
            for columnIndex in 0..<lines {
                print(squareArray[rowIndex][columnIndex], terminator: " ")
            }
        } else {
            for columnIndex in 0..<lines {
                print(squareArray[rowIndex].reversed()[columnIndex], terminator: " ")
            }
        }
        print()
    }
}
