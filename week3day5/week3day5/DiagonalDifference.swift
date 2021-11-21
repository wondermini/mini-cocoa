//
//  DiagonalDifference.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/21.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var left_to_right_diagonal = 0
    var right_to_left_diagonal = 0
    for i in 0...arr.count - 1 {
        for j in 0...arr.count - 1 {
            if i == j {
                left_to_right_diagonal += arr[i][j]
            }
            if i + j == arr.count - 1 {
                right_to_left_diagonal += arr[i][j]
            }
        }
    }

    let result = abs(left_to_right_diagonal - right_to_left_diagonal)
    return result
}
