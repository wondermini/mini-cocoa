//
//  arrayPractice2.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/02/25.
//

import Foundation

struct ArrayPractice {
    var result = [[Bool]]()
    mutating func fillArray(lines: Int) -> [[Bool]] {
        for i in 0 ..< lines {
            var tmpArr = [Bool]()
            for j in 0 ... lines {
                if i+j < lines {
                    tmpArr.append(false)
                } else {
                    tmpArr.append(true)
                }
            }
            result.append(tmpArr)
        }
        return result
    }
    func printArray(arrs: [[Bool]]){
        for rowArray in arrs{
            for cell in rowArray{
                if cell == true{
                    print("💩", terminator: " ")
                }else{
                    print("  ", terminator: " ")
                }
            }
            print()
        }
    }
}
