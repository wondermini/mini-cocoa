//
//  longestCommonPrefix.swift
//  211222
//
//  Created by JUNGMIN KIM on 2021/12/23.
//

import Foundation

class Solution2 {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }

        var prefix = ""
        var commonPrefix = ""
        let firstWord = strs.first
    
        for letter in firstWord! {
            prefix.append(letter)
            for word in strs[1...] {
                if !word.hasPrefix(prefix) {
                    return commonPrefix
                }
            }
            commonPrefix = prefix
        }
        return commonPrefix
    }
}
