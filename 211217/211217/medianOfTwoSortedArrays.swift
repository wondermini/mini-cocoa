//
//  File.swift
//  211217
//
//  Created by JUNGMIN KIM on 2021/12/17.
//

import Foundation

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var result = 0.0
        var mergeNums = nums1 + nums2
        let halfIndex = (mergeNums.count-1)/2
        mergeNums = mergeNums.sorted()
        if mergeNums.count % 2 == 0 {
            result = Double(mergeNums[halfIndex] + mergeNums[halfIndex + 1])/2
        } else {
            result = Double(mergeNums[halfIndex])
        }
        print(result)
        return result
    }
}
