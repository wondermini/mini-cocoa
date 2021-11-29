//
//  birthdayCakeCandles.swift
//  week5day1
//
//  Created by JUNGMIN KIM on 2021/11/29.
//

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    /*
     var maxCounter = 0
         for i in candles{
             if candles.max() == i{
                 maxCounter += 1
             }
         }
        return(maxCounter)
     */
    let max = candles.max()
    let maxNums = candles.filter { $0 == max }.count
    
    return maxNums
}
