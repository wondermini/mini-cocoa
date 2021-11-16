//
//  6.printSquare.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation


func printSquare(columns : Int){
    var tempValue = 0
    for _ in 1...columns{
        for _ in 1...columns{
            
            tempValue+=1
            if tempValue<10{
                print(" ", terminator: "")
            }
            print(tempValue,terminator: " ")
        }
        print()
    }
}
