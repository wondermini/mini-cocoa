//
//  main.swift
//  220414
//
//  Created by JUNGMIN KIM on 2022/04/14.
//

import Foundation

if first(a: 7, b: 3) == 10 {
    print("first test is success")
} else {
    print("first test is fail")
}

if gradingStudents(grades: [73, 67, 38, 33]) == [75, 67, 40, 33] {
    print("gradingStudents test is success")
} else {
    print("gradingStudents test is fail")
}

if compareTriplets(a: [1, 2, 3], b: [3, 2, 1]) == [1, 1] {
    print("compareTriplets test is success")
} else {
    print("compareTriplets test is success")
}

if aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]) == 5000000015 {
    print("aVeryBigSum test is success")
} else {
    print("aVeryBigSum test is fail")
}
