//
//  Grading Students.swift
//  week4day1
//
//  Created by JUNGMIN KIM on 2021/11/22.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    // var score = 0
    var result = [Int]()
    for score in grades {
            if score%5 <= 3 && score >= 38{
                result.append(score + (5 - score%5))
            }else {
                result.append(score)
            }
        }
        print(result)
        return result
    }

