//
//  2438.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/19.
//

import Foundation

func printStar(lines: Int){
    for i in 1...lines{
        for _ in 1...i{
            print("*", terminator: " ")
        }
        print()
    }
}
