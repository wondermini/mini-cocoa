//
//  pickingNumbers.swift
//  211214
//
//  Created by JUNGMIN KIM on 2021/12/14.
//

import Foundation


func pickingNumbers(a: [Int]) -> Int {
    // Write your code here
    var result = [Int]()
    for index in a.indices {
        var numbers = [a[index]]
        for secondIndex in a.indices {
            if index != secondIndex, abs(a[index] - a[secondIndex]) <= 1 {
                var numberFits = true
                for number in numbers {
                    if abs(number - a[secondIndex]) > 1 {
                        numberFits = false
                    }
                }
                if numberFits {
                    numbers.append(a[secondIndex])
                }
            }
        }
        result = numbers.count > result.count ? numbers : result
    }
    print(result)
    return result.count
}
