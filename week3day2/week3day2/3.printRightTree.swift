//
//  printRightTree.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation

func printRightTree(lines: Int) {
    for i in 1...lines{
        for j in 1...lines{
            if i+j > lines{
                print("🎈", terminator: " ")
            }else{
                print("  ", terminator: " " )
            }
        }
        print()
    }
}


