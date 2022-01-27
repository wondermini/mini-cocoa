//
//  whatIsGrade.swift
//  220127
//
//  Created by JUNGMIN KIM on 2022/01/27.
//

import Foundation

func whatIsGrade(point: Int) -> Character {
    var result:Character
    if point > 90 {
        result = "A"
    } else if point < 90, point >= 80 {
       result = "B"
    } else if point < 80, point >= 70 {
        result = "C"
    } else if point < 70, point >= 60 {
        result = "D"
    }else{
        result = "F"
    }
    print(result)
    return result
}
