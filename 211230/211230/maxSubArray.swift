//
//  maxSubArray.swift
//  211230
//
//  Created by JUNGMIN KIM on 2021/12/30.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    var m = 0
    var result = Int.min
    for i in 0 ..< nums.count {
        m = max(nums[i], nums[i] + m)
        result = max(result, m)
        //print("nums[i]:\(nums[i]) m:\(m) result:\(result)")
    }

    return result
}
