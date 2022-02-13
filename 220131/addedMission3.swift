//
//  addedMission3.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/12.
//

import Foundation

func rePrintRightTree(lines: Int) -> [[String]] {
    var result = [[String]]()
    for i in 1...lines{
        result.append([String]())
        for j in 0..<lines{
            if i+j>=lines{
                result[result.endIndex-1].append(String("🎈"))
            }else{
                    result[result.endIndex-1].append(String("  "))
                }
            }
        }
    return result
    }
func printRightTree(arrs: [[String]]) {
    for row in arrs {
        for value in row {
            print(value, terminator: " ")
        }
        print()
    }
}


