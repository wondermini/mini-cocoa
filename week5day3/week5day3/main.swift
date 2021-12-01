//
//  main.swift
//  week5day3
//
//  Created by JUNGMIN KIM on 2021/12/01.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}

print(gcd(2,6))
print(getTotalX(a: [2,6], b: [24,36]))
print(getTotalX(a: [2,6], b: [24,36]))
