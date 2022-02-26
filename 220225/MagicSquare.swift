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
        
        for i in 1 ... row * row {
            magicSquareArr[rowNum][columnNum] = i
            
            //다음 셀에 값이 들어 있는 경우에 현재 셀 아래로 이동하기 위해서 임시로 저장하는 값
            let tmpRow = rowNum
            let tmpColumn = columnNum

            //대각선 위로 이동
            rowNum -= 1
            columnNum += 1

            //행이 밖으로 나가 버리는 경우 맨 아래 행으로 이동
            if rowNum < 0 {
                rowNum = row - 1
            }
            //열이 밖으로 나가 버리는 경우 맨 앞 열로 이동
            if columnNum == row {
                columnNum = 0
            }

            //이동할 대상에 값이 이미 있는 경우 이전 셀의 바로 아래로 이동
            if magicSquareArr[rowNum][columnNum] != 0 {
                rowNum = tmpRow + 1
                columnNum = tmpColumn
            }
        }
        return magicSquareArr
    }


    func printMagicSquare(array: [[Int]]) {
        for rowArray in array {
            for cell in rowArray {
                print(String(format: "%2d", cell), terminator: " ")
            }
            print()
        }
    }
}

