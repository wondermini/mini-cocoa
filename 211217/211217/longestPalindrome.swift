//
//  longestPalindrome.swift
//  211217
//
//  Created by JUNGMIN KIM on 2021/12/19.
//

import Foundation

class Solution2 {
    func expandAroundCenter(charArray: [Character], left: Int, right: Int) -> Int {
        var leftIndex = left, rightIndex = right
        while leftIndex >= 0 && rightIndex < charArray.count && charArray[leftIndex] == charArray[rightIndex] {
            leftIndex -= 1
            rightIndex += 1
        }
        return rightIndex - leftIndex - 1
    }

    func longestPalindrome(_ s: String) -> String {
        if s.isEmpty || s.count < 1 {
            return ""
        }
        let charArray = Array(s)
        var start = 0, end = 0
        for i in 0 ..< charArray.count {
            //홀수 펠린드롬 검사
            let len1 = expandAroundCenter(charArray: charArray, left: i, right: i)
            //짝수 펠린드롬 검사
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
