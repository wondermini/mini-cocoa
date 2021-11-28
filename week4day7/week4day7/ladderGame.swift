//
//  ladderGame.swift
//  week4day7
//
//  Created by JUNGMIN KIM on 2021/11/28.
//

import Foundation

struct LadderGame {
    func enterNumOfpeople() -> Int {
        print("사다리게임에 참여할 인원을 입력해 주세요:", terminator: "")
        let numOfPeople = Int(readLine()!)!
        print("The number of participants is \(String(describing: numOfPeople)).")
        return numOfPeople
    }

    func bulidLadder(numOfPeople: Int, height: Int) -> [[Int]] {
        var tmpLadderArr = [[Int]]()
        for _ in 1 ... height {
            // var tmpRowArr = [Int]()
            tmpLadderArr.append((1 ..< numOfPeople).map { _ in .random(in: 0 ... 1) })
        }
        return tmpLadderArr
    }
    func printLadder(ladderArr:[[Int]]) {
        for rowArr in ladderArr{
            for cell in rowArr{
                print("|", terminator: "")
                print( cell==1 ? "-" : " ", terminator: "")
            }
            print("|")
        }
    }
}
