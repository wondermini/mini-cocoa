//
//  getCenterCharacter.swift
//  week4day6
//
//  Created by JUNGMIN KIM on 2021/11/27.
//

import Foundation

func getCenterCharacter(_ s: String) -> String {
    let tmpWordArr = Array(s)
    let endIndex = tmpWordArr.endIndex - 1
    let halfIndexValue = endIndex / 2
    if endIndex % 2 == 0 {
        return String(tmpWordArr[halfIndexValue])
    } else {
        let roundHalfIndexValue = Int(round(Double(halfIndexValue)))
        return String(tmpWordArr[roundHalfIndexValue]) + String(tmpWordArr[roundHalfIndexValue+1])
    }

}
