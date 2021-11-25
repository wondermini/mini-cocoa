//
//  staircase.swift
//  week4day4
//
//  Created by JUNGMIN KIM on 2021/11/26.
//

import Foundation

func staircase(n: Int) {
    // Write your code here
    for i in 1...n {
        for j in 1...n {
            if i + j > n{
                print("#", terminator: "")
            }else{
                print(" ", terminator: "")
            }
        }
        print()
    }
}
