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

    var minimum = scores[0]
    var maximum = scores[0]
    let tempScores = scores.dropFirst()
    for score in tempScores {
        // 맨 첫번째 값만 거치게됨. 첫번째를 호출하는용. 첫번째 값을 채워주기위함.

        if score < minimum {
            minCount += 1
            minimum = score
        } else if score > maximum {
            maxCount += 1
            maximum = score
        }
    }
    return [maxCount, minCount]
}
