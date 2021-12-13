//
//  formingMagicSquare.swift
//  211212
//
//  Created by JUNGMIN KIM on 2021/12/12.
//

import Foundation

func formingMagicSquare(s: [[Int]]) -> Int {
    // Write your code here

    let square = s.flatMap { $0 }

    let allMagicSquare = [[4, 9, 2, 3, 5, 7, 8, 1, 6],
                          [2, 7, 6, 9, 5, 1, 4, 3, 8],
                          [6, 1, 8, 7, 5, 3, 2, 9, 4],
                          [8, 3, 4, 1, 5, 9, 6, 7, 2],
                          [2, 9, 4, 7, 5, 3, 6, 1, 8],
                          [6, 7, 2, 1, 5, 9, 8, 3, 4],
                          [8, 1, 6, 3, 5, 7, 4, 9, 2],
                          [4, 3, 8, 9, 5, 1, 2, 7, 6]]
    var minOff = 99

    for i in 0..<8 {
        var off = 0
        for j in 0..<9 {
            off += abs(square[j] - allMagicSquare[i][j])
        }

        if off < minOff {
            minOff = off
        }
    }
    return minOff
}
