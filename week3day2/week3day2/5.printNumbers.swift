//
//  printNumbers.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation


func printNumbers(lines : Int){
    var tempValue = 0
    for i in 1...lines{
        for _ in 1...i{
            tempValue+=1
            print(tempValue,terminator: " ")
        }
        print()
    }
}
