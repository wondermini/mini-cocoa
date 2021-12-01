//
//  betweenTowSets.swift
//  week5day3
//
//  Created by JUNGMIN KIM on 2021/12/01.
//

import Foundation

func getTotalX(a: [Int], b: [Int]) -> Int {
    // Write your code here

    let result: Int = b.filter { $0 % a[0] == 0 && $0 % a[1] == 0 }.count
    return result
}
