//
//  p.printXY.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation

func printXY(max: Int) {
    for _ in 1...max {
        for j in 1...max {
            print(j, terminator: " ")
        }
        print()
    }
}

