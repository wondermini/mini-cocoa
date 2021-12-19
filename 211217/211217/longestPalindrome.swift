//
//  longestPalindrome.swift
//  211217
//
//  Created by JUNGMIN KIM on 2021/12/19.
//

import Foundation

class Solution2 {
    func expandAroundCenter(charArray: [Character], left: Int, right: Int) -> Int {
        var L = left, R = right
        while L >= 0 && R < charArray.count && charArray[L] == charArray[R] {
            L -= 1
            R += 1
        }
        return R - L - 1
    }

    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty || s.count < 1 {
            return ""
        }
        let charArray = Array(s)
        var start = 0, end = 0
        for i in 0 ..< charArray.count {
            let len1 = expandAroundCenter(charArray: charArray, left: i, right: i)
            let len2 = expandAroundCenter(charArray: charArray, left: i, right: i + 1)
            let len = max(len1, len2)
            if len > end - start {
                start = i - (len - 1) / 2
                end = i + len / 2
            }
        }
        let range = s.index(s.startIndex, offsetBy: start) ... s.index(s.startIndex, offsetBy: end)
        return String(s[range])
    }
}
