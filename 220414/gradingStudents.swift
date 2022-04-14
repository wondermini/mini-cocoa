//
//  gradingStudents.swift
//  220414
//
//  Created by JUNGMIN KIM on 2022/04/14.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    var finalGrade = [Int]()
    for originalGrade in grades {
        let nextMultipleOfFive = ((originalGrade / 5) + 1) * 5
        if originalGrade >= 38, nextMultipleOfFive - originalGrade < 3 {
            finalGrade.append(nextMultipleOfFive)
        } else {
            finalGrade.append(originalGrade)
        }
    }
    print(finalGrade)
    return finalGrade
}
