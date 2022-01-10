//
//  climbStairs.swift
//  220108
//
//  Created by JUNGMIN KIM on 2022/01/08.
//

import Foundation


func climbStairs(_ n: Int) -> Int {
    if n < 4 {
        return n
    }
    var prevPrev = 2
    var prev = 3
    var count = 4
    while count != n {
        let newPrev = prevPrev + prev
        prevPrev = prev
        prev = newPrev
        count += 1
    }
    return prevPrev + prev
}
