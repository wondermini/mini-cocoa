//
//  countingValleys.swift
//  211209
//
//  Created by JUNGMIN KIM on 2021/12/09.
//

//import Foundation

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var valley = 0
    var seaLevel = 0
    let pathArr = Array(path)
    
    for step in pathArr {
        
        if step == "U" {
            seaLevel += 1
        } else {
            seaLevel -= 1
        }
        
        if step == "U", seaLevel == 0 {
            valley += 1
        }
        
    }
    return valley
}
