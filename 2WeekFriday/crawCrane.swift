//
//  crawCrane.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/03/29.
//

import Foundation

func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    var counter = 0
    var stackdolls = [Int]()
    var tempBoard = [[Int]]()

    // 배열을 다루기 쉽도록 행과 열을 바꿔준다
    for i in 0...board.count-1 {
        tempBoard.append([Int]())
        for j in 0...board.count-1 {
            if board[j][i] != 0 {
                tempBoard[i].insert(board[j][i], at: 0)
            }
        }
    }
    print(board)
    /*
     [0, 0, 0, 0, 0],
     [0, 0, 1, 0, 3],
     [0, 2, 5, 0, 1],
     [4, 2, 4, 4, 2],
     [3, 5, 1, 3, 1]]
     */
    
    //90도 회전시킨 board
    print(tempBoard)

    for i in moves {
        if !tempBoard[i-1].isEmpty {
            let currentDoll = tempBoard[i-1].popLast()

            if stackdolls.isEmpty {
                stackdolls.append(currentDoll!)
            } else if stackdolls.last == currentDoll {
                counter += 2
                stackdolls.removeLast()
            } else {
                stackdolls.append(currentDoll!)
            }
        }
    }
    print("tempBoard=\(tempBoard)")
    print("stackdolls=\(stackdolls)")
    return counter
}
