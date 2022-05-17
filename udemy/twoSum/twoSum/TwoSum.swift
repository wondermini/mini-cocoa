//
//  File.swift
//  twoSum
//
//  Created by JUNGMIN KIM on 2022/05/17.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()

    for (i, num) in nums.enumerated() {
        if let index = dict[target - num] {
            if i != index {
                //
                return [index, i]
            }
        }
        dict[num] = i
    }
    // error
    return [0]
}
