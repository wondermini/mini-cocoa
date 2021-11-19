//
//  grading.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/19.
//

import Foundation

// 점수와 5의 배수와의 차이가 3미만이면 다음 5의 배수로 올림해준다. 38미만은 올림안함.
// 5에서 점수를 5로 나눈 나머지 값을 빼주고 점수에 더해주면 다음 5의 배수가 된다.
func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    var result = [Int]()
    for i in grades {
        if i%5 >= 3, i > 38 {
            result.append(i + (5 - i%5))
        } else {
            result.append(i)
        }
    }
    return result
}
