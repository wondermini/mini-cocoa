//
//  plusOne.swift
//  220103
//
//  Created by JUNGMIN KIM on 2022/01/03.
//

import Foundation


func plusOne(_ digits: [Int]) -> [Int] {
    let strDigits = digits.map { String($0) }
    let joined = strDigits.joined()
    let tmp = Int(joined)! + 1
    let result = String(tmp).compactMap{ $0.wholeNumberValue }
    return result
 }
