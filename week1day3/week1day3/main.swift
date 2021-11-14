//
//  main.swift
//  week1day3
//
//  Created by JUNGMIN KIM on 2021/11/02.
//

import Foundation

//미션1.
func printXY(max: Int){
    for _ in 1...max{
        for i in 1...max{
            print(i, terminator: " ")
        }
        print()
    }
}

printXY(max: 5)

//미션2.
func printLeftTree(lines : Int){
    for i in 1...lines{
        for _ in 1...i{
            print("🎈", terminator: "")
        }
        print()
    }
}
printLeftTree(lines: 5)

//미션3.
func printRightTree(lines : Int){
    for i in 1...lines{
        if i != lines {
            for _ in 1...lines - i{
                print("  ", terminator: "")
            }
        }
        for _ in 1...i{
            print("🎈", terminator: "")
        }
        print()
    }
}
printRightTree(lines: 4)

//미션4.
func printCenterTree(lines : Int){
    for i in 1...lines{
        if i != lines {
            for _ in 1...lines - i{
                print(" ", terminator: "")
            }
        }
        for _ in 1...i{
            print(" 🎈", terminator: "")
        }
        print()
    }
}
printCenterTree(lines: 5)

//미션5.
func printNumberse(lines : Int){
    var counter = 0
    for i in 1...lines{
        for _ in 1...i{
            counter += 1
            print(counter, terminator: " ")
        }
        print()
    }
}
printNumberse(lines: 5)

//미션6
func printSquare(columns : Int){
    
}
printSquare(columns: 5)
