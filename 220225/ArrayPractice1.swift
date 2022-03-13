//
//  ArrayPractice1.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/02/25.
//

import Foundation

struct ArrayPracticeOne{
    var result = [[Int]]()
    var cellValue = 0
    mutating func fillArray(line: Int) -> [[Int]]{
        for i in 0..<line{
            var tmpArr = [Int]()
            for j in 0..<line{
                cellValue += 1
                if j <= i{
                    tmpArr.append(cellValue)
                }
            }
            result.append(tmpArr)
        }
       return result
    }
}
