//
//  isLeap.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/04/26.
//

import Foundation



func isLeap(year: Int) -> Bool {
    if aYear%4 == 0, aYear%100 != 0, aYear%400 == 0 {
        return true
    }else{
        return false
    }
}
