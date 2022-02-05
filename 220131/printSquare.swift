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
            if num < 10{
                print(" ", terminator: "")
            }
            print(num, terminator: " ")
            
            num += 1
        }
        print("")
    }
}
