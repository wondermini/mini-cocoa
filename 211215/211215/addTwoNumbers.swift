//
//  addTwoNumbers.swift
//  211215
//
//  Created by JUNGMIN KIM on 2021/12/15.
//

import Foundation

class Solution1 {
    func addTwoNumbers(_ l1: [Int], _ l2: [Int]) -> [Int] {
        let l1ReversedMerge = l1.reversed().map { "\($0)" }.reduce("") { $0+$1 }
        let l2ReversedMerge = l2.reversed().map { "\($0)" }.reduce("") { $0+$1 }
        var l1ReversedMergeInt = Int(l1ReversedMerge)
        let l2ReversedMergeInt = Int(l2ReversedMerge)
        l1ReversedMergeInt! += l2ReversedMergeInt!
        let sumDigitsString = String(l1ReversedMergeInt!)
        let result: [Int] = sumDigitsString.compactMap { $0.wholeNumberValue }
        return result.reversed()
    }
}
