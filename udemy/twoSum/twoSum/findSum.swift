//
//  findsSum.swift
//  twoSum
//
//  Created by JUNGMIN KIM on 2022/05/19.
//

import Foundation

func findSum(nums: [Int], sum: Int) -> Bool {
    for i in nums {
        if nums.contains(sum - i) {
            return true
        }
    }
    return false
}
