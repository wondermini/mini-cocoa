//
//  romanToInteger.swift
//  algorithmCoding
//
//  Created by JUNGMIN KIM on 2022/05/20.
//

import Foundation

extension String {
    subscript(_ x:Int) -> Character {
        return self[index(startIndex, offsetBy:x)]

    }
}

extension Character {
    static let romanNumerals: [Character:Int] = [
        "I":1,
        "V":5,
        "X":10,
        "L":50,
        "C":100,
        "D":500,
        "M":1000
    ]
    var romanNumeral: Int {
        guard let num = Character.romanNumerals[self] else {
            return 0
        }
        return num
    }
}
class Solution {
    func romanToInt(_ s: String) -> Int {
        var total = 0
        var i = 0
        while i < s.count {
            var num = s[i].romanNumeral
            if i < s.count-1 {
                let nextNum = s[i+1].romanNumeral
                if nextNum > num {
                    num = nextNum - num
                    i+=1
                }
            }
            i+=1
            total += num
        }
        return total
    }
}
