//
//  File.swift
//  220129
//
//  Created by JUNGMIN KIM on 2022/01/29.
//

import Foundation

func printXY(max: Int) {
    for _ in 1 ... max {
        for j in 1 ... max {
            print(j, terminator: " ")
        }
        print()
    }
}
