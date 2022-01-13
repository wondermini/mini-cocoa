//
//  mergeSortedArray.swift
//  220113
//
//  Created by JUNGMIN KIM on 2022/01/13.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 = Array(nums1[0..<m])
    nums1 = (nums1 + nums2).sorted()
}
