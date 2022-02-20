//
//  8958.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/19.
//

import Foundation

func testPointCounter(testCase: String){
    var pointCounter = 0
    let testCaseArr = testCase.compactMap{$0.wholeNumberValue}
    for cell in testCase{
        if cell == "O"{
            pointCounter += 1
        }
    }
}
