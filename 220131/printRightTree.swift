//
//  printRightTree.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/01.
//

import Foundation

func printRightTree(lines: Int) {
    for i in 1...lines {
        for j in 0..<lines {
            if i + j >= lines {
                print("🍎", terminator: " ")
            }else{
                print("  ", terminator: " ")
            }
        }
        print()
    }
}
