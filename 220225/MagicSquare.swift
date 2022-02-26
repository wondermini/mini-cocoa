//
//  MagicSquare.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/02/26.
//

import Foundation

struct MagicSquare{
    func makeMagicSquare(row: Int) -> [[Int]]{
        // 마방진을 넣을 row * row 2차원 배열 생성. 초기치는 0으로 셋팅
        var magicSquareArr = [[Int]](repeating: [Int](repeating: 0, count: row), count: row)
        var rowNum = 0
        var columnNum = row/2
        
        for i in 1 ... row*row{
            magicSquareArr[rowNum][columnNum] = i
        }
    }
