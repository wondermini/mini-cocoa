//
//  twoSum.swift
//  211215
//
//  Created by JUNGMIN KIM on 2021/12/15.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        for index in 0 ..< nums.count {
            for innerIndex in index + 1 ..< nums.count {
                let sum = nums[index] + nums[innerIndex]
                if target == sum {
                    result.append(index)
                    result.append(innerIndex)
                }
            }
        }
        print(result)
        return result
    }
}
