//
//  8958.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/19.
//

import Foundation

func testPointCounter(testCase: String) -> Int {
    var pointCounter = 0
    var accuCounter = 0
    let testCaseArr = Array(testCase)
    for cell in testCaseArr {
        if cell == "O" {
            accuCounter += 1
            pointCounter += accuCounter
        } else {
            accuCounter = 0
        }
    }
    return pointCounter
}
