//
//  getRow.swift
//  220117
//
//  Created by JUNGMIN KIM on 2022/01/17.
//

import Foundation

func getRow(_ rowIndex: Int) -> [Int] {
    if rowIndex <= 0 {
        return [1]
    }
    if rowIndex == 1 {
        return [1, 1]
    }
    var result: [Int] = [1, 1]
    for i in 2 ... rowIndex {
        let lastRsult = result
        result.append(1)

        for j in 1 ..< i {
            result[j] = lastRsult[j - 1] + lastRsult[j]
        }
    }
    return result
}
