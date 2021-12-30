//
//  searchInsert.swift
//  211230
//
//  Created by JUNGMIN KIM on 2021/12/30.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var result = nums.count
    if nums.contains(target) {
        let indexOfTarget = nums.firstIndex(of: target)
        result = indexOfTarget!
    } else {
        for num in nums {
            if num > target {
                let indexOfNum = nums.firstIndex(of: num)
                result = indexOfNum!
                break
            }
        }
    }
    print(result)
    return result
}
