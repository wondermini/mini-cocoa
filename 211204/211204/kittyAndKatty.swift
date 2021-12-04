//
//  Kitty and Katty.swift
//  211204
//
//  Created by JUNGMIN KIM on 2021/12/04.
//

import Foundation


func breakingRecords(scores: [Int]) -> [Int] {
    // Write your code here
    var minCount = 0
    var maxCount = 0
    var minimum = 0
    var maximum = 0
    for score in scores {
        if minimum == 0 {
            minimum = score
            maximum = score
        }else{
            if score < minimum {
                minCount += 1
                minimum = score
            }else if score > maximum {
                maxCount += 1
                maximum = score
            }
        }
    }
    return [maxCount,minCount]

}
