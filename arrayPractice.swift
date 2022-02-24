//
//  arrayPractice.swift
//  220224
//
//  Created by JUNGMIN KIM on 2022/02/24.
//

import Foundation

struct ArrayPracticeTwo {
    func fillArray(line: Int) -> [[Int]] {
        var cellValue = 0
        var result = [[Int]]()

        for i in 0 ..< line {
            var tmpArr = [Int]()
            for j in 0 ..< line {
                cellValue += 1
                if j <= i {
                    tmpArr.append(cellValue)
                }
            }
            result.append(tmpArr)
        }
        return result
    }
    func printArray(arrs: [[Int]]){
        for rowArray in arrs{
            print(rowArray)
        }
    }
}
