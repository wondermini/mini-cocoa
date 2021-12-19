//
//  palindromeNumber.swift
//  211219
//
//  Created by JUNGMIN KIM on 2021/12/19.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let intArr = String(x).compactMap { Int(String($0)) }
        if x < 0{
            return false
        }
        if intArr.count <= 1 {
            return true
        }
            let half = (intArr.count-1)/2
            if intArr.count % 2 == 0 {
                let firstElements = intArr[0...half]
                let secondElements = intArr[half + 1...intArr.count-1].reversed()
                if Array(firstElements) == Array(secondElements) {
                    return true
                }
                return false
            }else{
                let half = (intArr.count-1)/2
                let firstElements = intArr[0...half-1]
                let secondElements = intArr[half+1...intArr.count-1].reversed()
                if Array(firstElements) == Array(secondElements) {
                    return true
                }
                return false
            }
    }
}

