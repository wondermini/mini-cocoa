//
//  loveCalculator.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/04/26.
//

import Foundation

func loveCalculator() {
    let loveScore = Int.random(in: 0 ... 100)

    if loveScore > 80 {
        print("Your love each other like Kanye loves Kanye")
    }else if 40 < loveScore || loveScore < 80{
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone")
    }
}
