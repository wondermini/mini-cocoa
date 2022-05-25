//
//  longestCommonPrefix.swift
//  algorithmCoding
//
//  Created by JUNGMIN KIM on 2022/05/24.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return "" }
       
        var minStr = (strs.min{$0.count < $1.count})!
        
        for str in strs{
            while !str.hasPrefix(minStr){
                 minStr.removeLast()
            }
        }
        
        return minStr
    }
