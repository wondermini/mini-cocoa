//
//  singleNumber.swift
//  Single Number
//
//  Created by JUNGMIN KIM on 2022/03/24.
//

import Foundation


    func singleNumber(_ nums: [Int]) -> Int {
        var result = Int[]
        for i in 0..<nums.count{
            for j in i..<nums.count{
                if i == j {
                    nums.remove(at:i)
                }
            }
        }
        return removedArr[0]
    }
