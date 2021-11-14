//
//  algorithm.12910.swift
//  Week2Day7
//
//  Created by JUNGMIN KIM on 2021/11/14.
//

import Foundation
// https://programmers.co.kr/learn/courses/30/lessons/12910
func solution12910(_ arr: [Int], _ divisor: Int) -> [Int] {
    var tempArr = [Int]()
    for i in arr {
        if i % divisor == 0 {
            tempArr.append(i)
        }
    }
    if tempArr.isEmpty {
        tempArr.append(-1)
    }
    return tempArr.sorted(by: <)
}
