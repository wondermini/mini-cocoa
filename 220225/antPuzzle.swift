//
//  antPuzzle.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/09.
//

import Foundation

func antFunction(inputArray: [Int]) -> [Int] {
    var formerValue = [1]
    var counter = 0
    var result = [Int]()
    
    counter += inputArray.count
    if counter == formerValue[0]{
      counter += 1
    }else{
        result += formerValue
        result.append(counter)
    }
}
