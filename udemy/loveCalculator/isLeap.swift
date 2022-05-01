//
//  isLeap.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/04/26.
//

import Foundation



func isLeap(year: Int) -> Bool {
    if year%4 == 0, year%100 != 0, year%400 == 0 {
        return true
    }else{
        return false
    }
}
