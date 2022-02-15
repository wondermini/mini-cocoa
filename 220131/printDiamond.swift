//
//  printDiamond.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/06.
//

import Foundation

func printDiamond(lines: Int) {
    var halfup = 0
    var halfdown = 0
    if lines % 2 == 0 {
        halfup = lines / 2
        halfdown = lines / 2 + 1
    } else {
        halfup = lines / 2 + 1
        halfdown = lines / 2 + 1
    }
    for i in 1...halfup {
        for _ in stride(from: halfup, to: i, by: -1) {
            print(terminator: " ")
        }
        for _ in 1...i {
            print("*", terminator: " ")
        }
        print(" ")
    }
    
    print("-------------")
    
    for i in stride(from: halfdown, to: 0, by: -1) {
        for _ in stride(from: halfdown, to: i-1, by: -1) {
            print(terminator: " ")
        }
        for _ in stride(from: 1, to: i, by: 1) {
            print("*", terminator: " ")
        }
        print(" ")
    }
}
