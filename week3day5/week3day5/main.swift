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

// aVeryBigSum
let result3 = aVeryBigSum2(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])

if result3 == 5000000015 {
    print("aVeryBigSum test success")
} else {
    print("aVeryBigSum test fail")
}

// TimeConversion
let result4 = timeConversion(s: "07:05:45PM")

if result4 == "19:05:45" {
    print("timeConversion test success")
} else {
    print("timeConversion test fail")
}

let result5 = kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)

if result5 == "YES" {
    print("kangaroo test success")
} else {
    print("kangaroo test fail")
}

let result6 = kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)

if result6 == "NO" {
    print("kangaroo test success")
} else {
    print("kangaroo test fail")
}

let result7 = diagonalDifference(arr: [[11, 2, 4],
                                       [4, 5, 6],
                                       [10, 8, -12]])
if result7 == 15 {
    print("diagonalDifference test success")
} else {
    print("diagonalDifference test fail")
}
