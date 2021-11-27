//
//  baseballGame.swift
//  week4day6
//
//  Created by JUNGMIN KIM on 2021/11/27.
//

import Foundation

struct BaseballGame {
    var number: [Int]!
    
    mutating func newGame() {
        number = Array(repeating: Int.random(in: 0 ... 9), count: 3)
        print("Let's start game!")
        
        if showGameScore() {
            print("Wow, you win! 🙌")
        } else {
            print("Game over ☠️")
        }
        print("The answer was... \(number!.map { String($0) }.joined())")
    }
    
    func hit(guess: Int) -> (strikeCount: Int, ballCount: Int) {
        var strikeCount = 0
        var ballCount = 0
        let guessArray = [guess / 100, (guess % 100) / 10, guess % 10]
        
        for n in 0 ..< number.count { // 0, 1, 2
            if guessArray[n] == number[n] {
                strikeCount += 1
            } else if number.contains(guessArray[n]) {
                ballCount += 1
            }
        }
        return (strikeCount, ballCount)
    }
    
    func showGameScore() -> Bool {
        var trial = 0
        var strikeCount = 0
        var ballCount = 0
        
        while trial < 9 {
            print("You have \(9 - trial) chances left.")
            print("Enter your guess: ")
            let input = readLine()!
            
            if input.count == 3 {
                if let guess = Int(input) {
                    trial += 1
                    (strikeCount, ballCount) = hit(guess: guess)
                    if strikeCount >= 3 {
                        return true
                    }
                    print("\(strikeCount) strike, \(ballCount) ball")
                } else {
                    print("You should enter three numbers")
                }
            } else {
                print("You should enter three numbers")
            }
        }
        return false
    }
}
