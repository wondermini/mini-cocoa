//
//  main.swift
//  220113
//
//  Created by JUNGMIN KIM on 2022/01/13.
//

import Foundation

var nums1 = [1, 2, 3, 0, 0, 0]
var nums2 = [2, 5, 6]
merge(&nums1, 3, nums2, 3)

if nums1 == [1, 2, 2, 3, 5, 6] {
    print("merge test success")
} else {
    print("merge test fail")
}

nums1 = [1]
nums2 = []
merge(&nums1, 1, nums2, 0)

if nums1 == [1] {
    print("merge test success")
} else {
    print("merge test fail")
}

nums1 = [0]
nums2 = [1]
merge(&nums1, 0, nums2, 1)

if nums1 == [1] {
    print("merge test success")
} else {
    print("merge test fail")
}
