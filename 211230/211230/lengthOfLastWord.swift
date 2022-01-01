//
//  lengthOfLastWord.swift
//  211230
//
//  Created by JUNGMIN KIM on 2021/12/31.
//

import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    let arrSplit = s.split(separator: " ")
    return arrSplit.last!.count
}
