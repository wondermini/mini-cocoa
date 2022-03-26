//
//  singleNumber.swift
//  Single Number
//
//  Created by JUNGMIN KIM on 2022/03/24.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
//        var removedArr = [Int]()
//        for i in 0..<nums.count{
//            for j in i..<nums.count{
//                if i == j {
//                    nums.remove(at:i)
//                }
//            }
//        }

    var elementCount = [Int: Int]()

    for i in nums {
        if (elementCount[i] == nil) {
            elementCount[i] = 1
        } else {
            elementCount[i]! += 1
        }
    }

    return elementCount.filter { $0.value == 1 }.keys.first!
}
