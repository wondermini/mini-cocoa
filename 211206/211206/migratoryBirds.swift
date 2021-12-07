//
//  migratoryBirds.swift
//  211206
//
//  Created by JUNGMIN KIM on 2021/12/07.
//

import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    // 배열 내 숫자들의 등장 횟수를 카운트하여 Dictionary에 넣는다.
    var eachCounts = [Int: Int]()
    for element in arr {
        if eachCounts[element] != nil {
            eachCounts[element]! += 1
        } else {
            eachCounts[element] = 1
        }
    }

    // 가장 많이 등장한 숫자들만 뽑아서 Set으로 만듦
    let maxValue = eachCounts.values.max()
    var maxValueKeyArr = [Int]()
    for (key, value) in eachCounts {
        if value == maxValue {
            maxValueKeyArr.append(key)
        }
    }

    return  maxValueKeyArr.sorted().first!
    
}
