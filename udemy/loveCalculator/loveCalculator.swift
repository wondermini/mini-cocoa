//
//  loveCalculator.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/04/26.
//

import Foundation

func loveCalculator() {
    let loveScore = Int.random(in: 0 ... 100)

    if loveScore == 100 {
        print("Your love each other like Kanye loves Kanye")
    } else {
        print("You'll be forever alone")
    }
}
