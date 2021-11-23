//
//  ladderGame.swift
//  week4day2
//
//  Created by JUNGMIN KIM on 2021/11/23.
//

import Foundation

struct LadderGame {
    func buildLadderArrs(numOfPeople: Int, height: Int) -> [[Int]] {
        var ladderArrs = [[Int]]()
        for _ in 1...height {
            var rowArr = [Int]()
            // 참여인원보다 하나 작게 사다리가 생김.
            for _ in 1...numOfPeople - 1 {
                rowArr.append(Int.random(in: 0...1))
            }
            ladderArrs.append(rowArr)
        }
        return ladderArrs
    }

    func printLadderArrs(ladderArrs: [[Int]]) {
        for rowArr in ladderArrs {
            var rowLine = "|"
            for value in rowArr {
                if value == 1 {
                    rowLine += "-"
                } else {
                    rowLine += " "
                }
                rowLine += "|"
            }
            print(rowLine)
        }
    }
}
