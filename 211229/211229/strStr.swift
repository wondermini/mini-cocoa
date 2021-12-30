//
//  strStr.swift
//  211229
//
//  Created by JUNGMIN KIM on 2021/12/29.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty  {
        return 0
    }
    if let range: Range<String.Index> = haystack.range(of: needle) {
        let index: Int = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        print("index: ", index)
        return index
    }

    return -1
}
