//
//   palindromeNum.swift
//  twoSum
//
//  Created by JUNGMIN KIM on 2022/05/19.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let xStr = String(x)
    return xStr == String(xStr.reversed())
}
