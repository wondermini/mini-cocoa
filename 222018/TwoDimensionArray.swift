//
//  2DimensionArray.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/23.
//

import Foundation

struct ArrayPractice {
    func fillArray(line:Int) -> [[Int]]{
      var result = [[Int]]()
        var cellValue = 0
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
    
    func printArray(array: [[Int]]) {
        for rowArray in array {
            print(rowArray)
        }
    }
}
