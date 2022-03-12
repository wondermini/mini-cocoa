//
//  antPuzzle.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/09.
//

import Foundation
func lookAndSay(_ seq: [Int]) -> [Int] {
    var result = [Int]()
    var cur = seq[0]
    var curRunLength = 1

    for i in seq.dropFirst() {
        if cur == i {
            curRunLength += 1
        } else {
            result.append(cur)
            result.append(curRunLength)
            curRunLength = 1
            cur = i
        }
    }
    result.append(cur)
    result.append(curRunLength)

    return result
}
