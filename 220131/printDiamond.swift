//
//  printDiamond.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/06.
//

import Foundation

func printDiamond(lines: Int) {
    for i in 1...lines {
        for _ in stride(from: lines, to: i, by: -1) {
            print(terminator: " ")
        }
        for _ in 1...i {
            print("*", terminator: " ")
        }
        print(" ")
    }
    
    print("-------------")
    
    for i in stride(from: lines, to: 0, by: -1) {
        for _ in stride(from: lines, to: i-1, by: -1) {
            print(terminator: " ")
        }
        for _ in stride(from: 1, to: i, by: 1) {
            print("*", terminator: " ")
        }
        print(" ")
    }
}
