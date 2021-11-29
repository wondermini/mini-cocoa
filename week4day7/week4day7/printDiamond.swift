//
//  printDiamond.swift
//  week4day7
//
//  Created by JUNGMIN KIM on 2021/11/28.
//

import Foundation

func pirntDiamond(lines: Int) -> [[Character]] {
    var result = [[Character]]()
    var row = 1
    while row <= lines {
        if lines % 2 == 0 // n- even
        {
            if row <= lines/2 {
                let star = String(repeating: "*", count: (row-1)*2+1)
                let space = String(repeating: " ", count: (lines/2)-row)
                result.append(Array(space+star+space))
                // print(space+star)
            }
        } else { // n- odd
            if row < lines/2+1 {
                let star = String(repeating: "$", count: (row-1)*2+1)
                let space = String(repeating: " ", count: (lines/2)-row+1)
                result.append(Array(space+star+space))
                // print(space+star)
            }
        }
        if row > lines/2 {
            let star = String(repeating: "#", count: (lines-row)*2+1)
            let space = String(repeating: " ", count: row-((lines/2)+1))
            result.append(Array(space+star+space))
            // print(space+star)
        }
        row += 1
    }
    return result
}
