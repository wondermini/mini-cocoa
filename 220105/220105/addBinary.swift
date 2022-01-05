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
    var count = 0

    if arrA.count >= arrB.count {
        count = arrA.count
    } else {
        count = arrB.count
    }

    for i in 0 ..< count {
        var a = 0
        if i < arrA.count {
            a = arrA[i]
        }
        var b = 0
        if i < arrB.count {
            b = arrB[i]
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
    result.reverse()
    let tmp = result.map { String($0) }.joined()
    print(tmp)
    return tmp
}
