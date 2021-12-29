//
//  removeElement.swift
//  211228
//
//  Created by JUNGMIN KIM on 2021/12/28.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums = nums.filter { $0 != val }
    return nums.count
}
