//
//  addedMission1.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/09.
//

import Foundation

func rePrintXY(max: Int) -> [[String]] {
    var result = [[String]]()
    for _ in 1...max {
        result.append([String]())
        for i in 1...max {
            result[result.endIndex-1].append(String(i))
        }
    }
    return (result)
}
