//
//  romanToInteger.swift
//  211221
//
//  Created by JUNGMIN KIM on 2021/12/21.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        var totalResult = 0
        var arrValue = [Int]()
        let arrS = Array(s)
        for element in arrS {
            if element == "I" {
                arrValue.append(1)
            } else if element == "V" {
                arrValue.append(5)
            } else if element == "X" {
                arrValue.append(10)
            } else if element == "L" {
                arrValue.append(50)
            } else if element == "C" {
                arrValue.append(100)
            } else if element == "D" {
                arrValue.append(500)
            } else if element == "M" {
                arrValue.append(1000)
            }
            
        }
        
        var index = 0
        for _ in 0 ..< arrValue.count {
            if index < arrValue.count - 1 && arrValue[index] >= arrValue[index+1] {
                totalResult += arrValue[index]
                
            } else if index < arrValue.count - 1 && arrValue[index] < arrValue[index+1] {
                let substractTwo = arrValue[index+1] - arrValue[index]
                totalResult += substractTwo
                index += 1
            } else if index == arrValue.count - 1 {
                totalResult += arrValue.last!
            }
            index += 1
        }
        
        print(totalResult)
        return totalResult
    }
}
