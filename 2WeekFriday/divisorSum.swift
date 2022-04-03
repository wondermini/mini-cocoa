//
//  divisorSum.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/04/02.
//

import Foundation

func addDivisor(_ n:Int) -> Int {
    var allValue = 1
    for value in 2...n{
        if n%value == 0 {
            allValue += value
        }
    }
    print(allValue)
    return allValue
}
