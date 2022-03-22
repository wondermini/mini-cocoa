//
//  baseballGame.swift
//  getInterestRate
//
//  Created by JUNGMIN KIM on 2022/03/21.
//

import Foundation

struct BaseballGame {
    var answerNums = 0

    mutating func newGame() {
        // 컴퓨터가 랜덤하게 세자리 숫자를 생성한다.
        answerNums = Int.random(in: 0 ... 999)
    }

    func inputThreeNumbs() -> Int {
        print("3자리 숫자를 입력해 주세요.")
        if let tmpValue = readLine() {
            if let num = Int(tmpValue) {
                print("입력값은 \(num) 입니다.")
                return num
            } else {
                print("입력값 숫자가 아닙니다. 입력값 = \(tmpValue)")
            }
        } else {
            print("입력값이 없습니다.")
        }
        // 에러코드를 반환
        return -1
    }
    
    mutating func playGame() {
        print("숫자야구를 시작합니다.")
        newGame()

        repeat {} while countStrikeAndBall(input: inputThreeNumbs()) != 3
    }

    mutating func countStrikeAndBall(input: Int) -> Int {
        var ballCounter = 0
        var strikeCounter = 0
        var outCounter = 0
        
        let answerFirstDigit = answerNums/100
        let answerSecondDigit = (answerNums%100)/10
        let answerThirdDigit = answerNums%10
        
        let inputFirstDigit = input/100
        let inputSecondDigit = (input%100)/10
        let inputThirdDigit = input%10
        
        if inputFirstDigit == answerFirstDigit {
            strikeCounter += 1
        } else if inputFirstDigit == answerSecondDigit || inputFirstDigit == answerThirdDigit {
            ballCounter += 1
        } else {
            outCounter += 1
        }
        
        if inputSecondDigit == answerSecondDigit {
            strikeCounter += 1
        } else if inputSecondDigit == answerFirstDigit || inputSecondDigit == answerThirdDigit {
            ballCounter += 1
        } else {
            outCounter += 1
        }
        
        if inputThirdDigit == answerThirdDigit {
            strikeCounter += 1
        } else if inputThirdDigit == answerSecondDigit || inputThirdDigit == answerFirstDigit {
            ballCounter += 1
        } else {
            outCounter += 1
        }
        
        print("\(strikeCounter) 스트라이크 \(ballCounter) 볼 \(outCounter) 아웃")
        return strikeCounter
    }
}
