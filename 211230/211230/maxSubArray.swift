//
//  maxSubArray.swift
//  211230
//
//  Created by JUNGMIN KIM on 2021/12/30.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    var result = Int.min
    if nums.count == 0 {
        result = 0
    } else if nums.count == 1 {
        result = nums[0]
    } else {
        for index in 0..<nums.count {
            var tmpSum = 0
            for i in index..<nums.count {
                tmpSum += nums[i]
                if result < tmpSum {
                    result = tmpSum
                }
            }
        }
    }
    print(result)
    return result
}
