//
//  romanToInteger.swift
//  211222
//
//  Created by JUNGMIN KIM on 2021/12/22.
//

import Foundation


//class Solution {
//    let dictionary = [
//        "I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000,
//        "XL" : 40
//        "XC" : 90,
//        "CD" : 900,
//        "IV" : 4,
//        "IX" : 9
//    ]
//
//
//}

class Solution {
    func romanLetterToInt(_ ch: Character) -> Int {
        switch (ch) {
            case "I":
                return 1
                break
            case "V":
                return 5
                break
            case "X":
                return 10
                break
            case "L":
                return 50
                break
            case "C":
                return 100
                break
            case "D":
                return 500
                break
            case "M":
                return 1000
                break
            default:
                return -1
        }
    }
    
    func romanToInt(_ s: String) -> Int {
        let chars = Array(s)
        var result = 0
        
        for i in 0..<chars.count {
            if i < chars.count - 1 && romanLetterToInt(chars[i]) < romanLetterToInt(chars[i + 1]) {
                result -= romanLetterToInt(chars[i])
                continue
            }
            result += romanLetterToInt(chars[i])
        }
        
        return result
    }
}
