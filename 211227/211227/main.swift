//
//  main.swift
//  211227
//
//  Created by JUNGMIN KIM on 2021/12/27.
//

import Foundation

print("Hello, World!")
var nums = [1, 1, 2]
if removeDuplicates(&nums) == 2, nums == [1, 2] {
    print("removeDuplicates test is success")
} else {
    print("removeDuplicates test is fail")
}

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
if removeDuplicates(&nums) == 5, nums == [0, 1, 2, 3, 4] {
    print("removeDuplicates test is success")
} else {
    print("removeDuplicates test is fail")
}
