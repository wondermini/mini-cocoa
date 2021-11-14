//
//  main.swift
//  week2day6
//
//  Created by JUNGMIN KIM on 2021/11/13.
//

import Foundation

// M7.
func printReverse(lines: Int) {
    var temp = 0
    for i in 1...lines {
        var tempArr = [Int]()
        for _ in 1...lines {
            temp += 1
            tempArr.append(temp)
        }
        if i%2 == 0 {
            tempArr = tempArr.reversed()
        }
        for j in tempArr {
            if j < 10 {
                print(" ", terminator: "")
            }
            print(j, terminator: " ")
        }
        print()
    }
}

printReverse(lines: 4)

// M9.
func print3515(lines: Int) -> [String] {
   var resultArr = [String]()
    for i in 1...lines{
        if i%15 == 0{
            resultArr.append("👏🏼🙏")
        }else if i%3 == 0{
            resultArr.append("👏🏼")
        }else if i%5 == 0{
            resultArr.append("🙏")
        }else{
            resultArr.append(String(i))
        }
    }
    return resultArr
}
print(print3515(lines: 15))
 
