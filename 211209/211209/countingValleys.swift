//
//  countingValleys.swift
//  211209
//
//  Created by JUNGMIN KIM on 2021/12/09.
//

//import Foundation

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var hillCounter = 0
    var currentLevel = 0
    let pathArr = Array(path)
    
    for i in 0 ..< pathArr.count - 1 {
        if currentLevel >= -1, pathArr[i] == "U", pathArr[i + 1] == "D" {
            hillCounter += 1
        }
        
        if pathArr[i] == "U" {
            currentLevel += 1
        } else {
            currentLevel -= 1
        }
    }
    
    return hillCounter
}
