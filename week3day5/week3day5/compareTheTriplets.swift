//
//  compareTheTriplets.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/19.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    // Write your code here
    var result = [0, 0]
    for i in 0...a.count-1 {
        if a[i] > b[i] {
            result[0] += 1
        } else if a[i] < b[i] {
            result[1] += 1
        }
    }
    return result 
}
