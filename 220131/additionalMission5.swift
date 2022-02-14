//
//  additionalMission5.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/14.
//

import Foundation


func reNumbers(lines: Int) -> [[String]]{
    var result = [[String]]()
    var num = 1
    for i in 1...lines{
        result.append([String]())
        for _ in 1...i{
            result[result.endIndex-1].append(String(num))
            if num < 10{
                result[result.endIndex-1].append(String(""))
            }
            num+=1
        }
    }
    return result
}

func rePrintNumbers(arrs:[[String]]){
    for row in arrs{
        for value in row{
            print(value, terminator: " ")
        }
        print()
    }
}
