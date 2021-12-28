//
//  removeDuplicates.swift
//  211227
//
//  Created by JUNGMIN KIM on 2021/12/27.
//

import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var index = 1
    for i in 1 ..< nums.count {
        if nums[i - 1] != nums[i] {
            nums[index] = nums[i]
            index += 1
        }
    }
    print(nums)
    print(index)
    return index
}
