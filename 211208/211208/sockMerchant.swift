//
//  sockMerchant.swift
//  211208
//
//  Created by JUNGMIN KIM on 2021/12/08.
//

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here

    let eraseSameValue = Set(ar)
    var eachAllCounts = [Int]()
    
    for value in eraseSameValue {
        var sameValueCounter = 0
        for element in ar {
            if element == value {
                sameValueCounter += 1
            }
            
        }
        eachAllCounts.append(sameValueCounter)
    }
    print(eachAllCounts)
    let pairValue: [Int] = eachAllCounts.map { $0 / 2 }
    let result: Int = pairValue.reduce(0,+)
    return result
}
