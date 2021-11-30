//
//  applesAndOranges.swift
//  week5day2
//
//  Created by JUNGMIN KIM on 2021/11/30.
//

import Foundation


func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    // Write your code here
    let unitsDistnaceApples = apples.map { $0 + a }
    let unitsDistnaceOranges = oranges.map { $0 + b }
    let numLandedApples = unitsDistnaceApples.filter{ s...t ~= $0 }.count
    let numLandedOranges = unitsDistnaceOranges.filter{ s...t ~= $0 }.count
    print(numLandedApples)
    print(numLandedOranges)
    }
    
    
