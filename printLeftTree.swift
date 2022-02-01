//
//  printLeftTree.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/01/31.
//

import Foundation


func printLeftTree(lines: Int){
    for i in 0..<lines{
        for _ in 0...i{
            print("🍎", terminator: " ")
        }
        print("")
    }
}
