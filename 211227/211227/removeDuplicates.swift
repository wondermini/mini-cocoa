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
    }else if nums.count == 1{
        return 1
    }else {
        var result = 1
        var temp = [nums[0]]
        for index in 1 ... nums.count-1 {
            if nums[index] > nums[index-1] {
                result += 1
                temp.append(nums[index])
            }
        }
        print(result)
        print(temp)
        nums = temp
        return result
    }
}
