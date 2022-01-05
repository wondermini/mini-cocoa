//
//  addBinary.swift
//  220105
//
//  Created by JUNGMIN KIM on 2022/01/05.
//

import Foundation

func addBinary(_ a: String, _ b: String) -> String {
    var arrA = a.map { Int(String($0))! }
    arrA = arrA.reversed()
    var arrB = b.map { Int(String($0))! }
    arrB = arrB.reversed()
    var result = [Int]()
    var round = 0
    let length = max(arrA.count, b.count)

    for index in 0 ..< length {
        var a = 0
        if index < arrA.count {
            a = arrA[index]
        }
        var b = 0
        if index < arrB.count {
            b = arrB[index]
        }

        let sum = a + b + round
        if sum == 3 {
            round = 1
            result.append(1)
        } else if sum == 2 {
            round = 1
            result.append(0)
        } else {
            round = 0
            result.append(sum)
        }
    }
    
    if round == 1 {
        result.append(1)
    }
    
    return result.reversed().map { String($0) }.joined()
}
