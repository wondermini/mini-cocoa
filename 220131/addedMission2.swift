//
//  addedMission2.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/10.
//

import Foundation

func rePrintLeftTree(lines: Int)-> [[String]]  {
    var result = [[String]]()
    for i in 1...lines {
        result.append([String]())
        for _ in 1...i {
            result[result.endIndex-1].append(String("🎈"))
        }
    }
    return result
}
func printLeftTree(arrs: [[String]]) {
    for row in arrs {
        for value in row {
            print(value, terminator: " ")
        }
        print()
    }
}
