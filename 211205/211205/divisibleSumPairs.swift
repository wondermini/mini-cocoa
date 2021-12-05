//
//  divisibleSumPairs.swift
//  211205
//
//  Created by JUNGMIN KIM on 2021/12/05.
//

import Foundation


func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    // Write your code here
   var resultCounter = 0
    for index in 0...n-2 {
        for j in index+1...n-1 {
            var total = ar[index]
            total += ar[j]
            if total % k == 0 {
                resultCounter += 1
            }
        }
    }
   return resultCounter
}
