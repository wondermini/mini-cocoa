//
//  additonalMission6.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/14.
//

import Foundation

func square(lines:Int) -> [[String]]{
    var num = 1
    var result = [[String]]()
    for _ in 1...lines{
        result.append([String]())
        for _ in 1...lines{
            if num < 10{
                result[result.endIndex-1].append(String(""))
            }
            result[result.endIndex-1].append(String(num))
            num += 1
            
        }
    }
    return result
}

func rePrintSquare(arrs:[[String]]){
    for row in arrs{
        for value in row{
            print(value, terminator: " ")
        }
        print()
    }
}
