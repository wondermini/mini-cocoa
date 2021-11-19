//
//  main.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/19.
//

import Foundation

// grading
let result1 = gradingStudents(grades: [73,
                                      67,
                                      38,
                                      33])

if result1 == [75, 67, 40, 33] {
    print("gradingStudents test success")
} else {
    print("gradingStudents test fail")
}

// compareTheTriplets
let result2 = compareTriplets(a: [5, 6, 7], b: [3, 6, 10])

if result2 == [1, 1] {
    print("compareTriplets test success")
} else {
    print("compareTriplets test fail")
}
