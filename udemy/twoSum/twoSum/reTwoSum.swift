//
//  reTwoSum.swift
//  twoSum
//
//  Created by JUNGMIN KIM on 2022/05/18.
//

import Foundation


func reTwoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    for (i,num) in nums.enumerated(){
        if let indexOne = dict[target - num]{
            return [indexOne,i]
        }
        dict[num] = i
    }
    return [0]
    }
