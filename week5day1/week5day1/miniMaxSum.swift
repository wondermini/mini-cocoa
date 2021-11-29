//
//  miniMaxSum.swift
//  week5day1
//
//  Created by JUNGMIN KIM on 2021/11/29.
//

import Foundation

func miniMaxSum(arr: [Int]) {
    // Write your code here
    let sortArr = arr.sorted()
    var totalMiniSum = 0
    for i in sortArr[0...3]{
        totalMiniSum += i
    }
    var totalMaxSum = 0
    for i in sortArr[1...4]{
        totalMaxSum += i
    }
    
    print(totalMiniSum, terminator: " ")
    print(totalMaxSum)
}
