//
//  numberLineJumps.swift
//  220414
//
//  Created by JUNGMIN KIM on 2022/04/16.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var kangaroo1 = x1
    var kangaroo2 = x2
    repeat {
        kangaroo1 += v1
        kangaroo2 += v2

        if kangaroo1 == kangaroo2 {
            return "YES"
        }
        if x1 < x2, kangaroo1 > kangaroo2 {
            return "NO"
        }

        if x1 > x2, kangaroo1 < kangaroo2 {
            return "NO"
        }
    } while true
}
