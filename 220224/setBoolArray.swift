//
//  setBoolArray.swift
//  220224
//
//  Created by JUNGMIN KIM on 2022/02/24.
//

import Foundation

struct PracticeArray {
    var result = [[Bool]]()
    
    mutating func setBoolArray(lines: Int) -> [[Bool]] {
        for i in 0 ..< lines{
            var tmpArr = [Bool]()
            for j in 0 ..< lines{
                if i+j < lines-1{
                    tmpArr.append(false)
                } else {
                    tmpArr.append(true)
                }
            }
            result.append(tmpArr)
            
        }
        print(result)
        return result
    }

    func printArray(arrs: [[Bool]]) {
        for rowArray in arrs {
            for cell in rowArray {
                if cell == false{
                    print("  ", terminator: " ")
                }
                if cell == true{
                    print("👻", terminator: " ")
                }
                
            }
            print()
        }
    }
}
