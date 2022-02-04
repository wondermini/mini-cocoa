//
//  printSquare.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/04.
//

import Foundation

func printSquare(lines: Int){
    var num = 1
    for _ in 1...lines{
        for _ in 1...lines{
            print(num, terminator: " ")
            if num < 10{
                print(" ", terminator: "")
            }
            num += 1
        }
        print("")
    }
}
