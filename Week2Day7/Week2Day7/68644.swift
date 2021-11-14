//
//  68644.swift
//  Week2Day7
//
//  Created by JUNGMIN KIM on 2021/11/14.
//

import Foundation

func solution68644(_ numbers: [Int]) -> [Int] {
    var tempSet = Set<Int>()
    for i in 0..<numbers.count-1 {
        for j in i + 1..<numbers.count {
            tempSet.insert(numbers[i] + numbers[j])
        }
    }

    return Array(tempSet).sorted()
}
