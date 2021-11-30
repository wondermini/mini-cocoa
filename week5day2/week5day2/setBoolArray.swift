//
//  setBoolArray.swift
//  week5day2
//
//  Created by JUNGMIN KIM on 2021/11/30.
//

import Foundation

struct Array {
    func setBoolArray(lines: Int) -> [[Bool]] {
        var resultArr = [[Bool]]()
        for i in 1...lines {
            var tmpArr = [Bool]()
            for j in 1...lines {
                if lines - i < j {
                    tmpArr.append(true)
                }
                else {
                    tmpArr.append(false)
                }
            }
            resultArr.append(tmpArr)
        }
        return resultArr
    }

    func printArray(array: [[Bool]], newChar: Character) {
        for row in array {
            for cell in row {
                print(cell ? newChar : " ", terminator: "")
            }
            print()
        }
    }
}
