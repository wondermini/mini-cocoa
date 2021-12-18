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
         mergeNums = mergeNums.sorted()
        if mergeNums.count % 2 == 0 {
            let half = (mergeNums.count-1)/2
            result = Double(mergeNums[half] + mergeNums[half + 1])/2
        } else {
            let halfIndex = (mergeNums.count-1)/2
            result = Double(mergeNums[halfIndex])
        }
        print(result)
        return result
    }
}
