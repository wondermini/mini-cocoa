//
//  intDivisor.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/03/28.
//

import Foundation

func divisor(_ arr: [Int], _ divisor: Int) -> [Int] {
    var resultArr = [Int]()
    for i in arr {
        if i % divisor == 0 && i >= 1{
            resultArr.append(i)
        }
    }
    if resultArr.count > 0 {
        return resultArr.sorted(by: <)
    } else {
        return [-1]
    }
}
