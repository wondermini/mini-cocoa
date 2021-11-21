//
//  two-sum.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/20.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var tempArr = [Int]()
        for i in 0 ... nums.count - 2 {
            for j in i+1 ... nums.count - 1 {
                if nums[i]+nums[j] == target {
                    tempArr.append(i)
                    tempArr.append(j)
                }
            }
        }
        return tempArr
    }
}
