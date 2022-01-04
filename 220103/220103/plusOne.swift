//
//  plusOne.swift
//  220103
//
//  Created by JUNGMIN KIM on 2022/01/03.
//

import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    var nums = digits
    
    for (i, n) in digits.enumerated().reversed() {
        if n < 9 {
            nums[i] += 1
            return nums
        }

        nums[i] = 0
    }

    if nums.first == 0 {
        nums.insert(1, at: 0)
    }

    return nums
}
