//
//  CodingExerciseOptionals.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/05/01.
//

import Foundation



func highestScore(scores: [String: Int]) {
  
  //Write your code here.
    
    print(scores.values.max() ?? 0)
}

