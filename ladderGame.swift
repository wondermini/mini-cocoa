//
//  ladderGame.swift
//  220215
//
//  Created by JUNGMIN KIM on 2022/02/15.
//

import Foundation

struct LadderGame {
    var participants = 0
    var height = 4
    var myladder = [[Int]]()
    
    mutating func startGame() {
        if let numberOfPeople = getNumberOfPeople() {
            myladder = createLadder(numberOfPeople, self.height)
            printLadder(myladder)
        }
    }

    func getNumberOfPeople() -> Int? {
        
        print("Let's start Ladder game!")
        print("Please enter a number of people:")
        
        let participants = Int(readLine()!)!
        if participants < 2 || participants > 8 {
            print("Input Error👻 This is not a valid number. A number should be greater than 2 and less than 8")
            return nil
        } else {
            return participants
        }
    }

    func createLadder(_ participants: Int, _ height: Int) -> [[Int]] {
        var ladder: [[Int]] = []
        for _ in 1...height {
            var row: [Int] = []
            for _ in 1 ..< participants {
                row.append(Int.random(in: 0...1))
            }
            ladder.append(row)
        }
        return ladder
    }

    func printLadder(_ ladder: [[Int]]) {
        for row in ladder {
            var rowString = "|"
            for step in row {
                if step == 1 {
                    rowString += "-"
                } else {
                    rowString += " "
                }
                rowString += "|"
            }
            print(rowString)
        }
    }
}
