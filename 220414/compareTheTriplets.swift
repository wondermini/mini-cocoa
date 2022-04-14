//
//  compareTheTriplets.swift
//  220414
//
//  Created by JUNGMIN KIM on 2022/04/14.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var score = [0,0]
    for index in 0..<a.count {
            if a[index] > b[index] {
                score[0] += 1
            } else if a[index] < b[index] {
                score[1] += 1
            }
    }
    return score
}
