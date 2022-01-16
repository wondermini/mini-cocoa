//
//  pascalsTriangle.swift
//  220115
//
//  Created by JUNGMIN KIM on 2022/01/15.
//

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 {
            return [[Int]]()
        }
        if numRows == 1{
            return [[1]]
        }
        if numRows == 2{
            return [[1],[1,1]]
        }
        var ans = [[1],[1,1]]
        for row in 2..<numRows{
            var newRow = Array(repeating: 1, count: row + 1)
            var i = 1
            while i < row{
                newRow[i] = ans[row-1][i-1] + ans[row-1][i]
                i += 1
            }
            ans.append(newRow)
        }
        return ans
    }
 
