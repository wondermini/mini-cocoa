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
        print("세 자리 숫자를 입력해 주세요.")
        if let tmpValue = readLine() {
            if let num = Int(tmpValue) {
                print("입력값은 \(num) 입니다.")
                return num
            } else {
                print("입력값 숫자가 아닙니다. 입력갑 = \(tmpValue)")
            }
        } else {
            print("입력값이 없습니다.")
        }
        //에러코드를 반환
        return -1
    }
    
    mutating func playGame() {
        newGame()
        var input = inputThreeNumbs()
        
        
    }

    func countStrikeAndBall(num: Int) {
        var ballCounter = 0
        var strikeCounter = 0
        
        let answerFirstDigit = answerNums/100
        let secondAnswerDigit = (answerNums%100)/10
        let thirdAnswerValue = answerNums%10
        
        let firstInputValue =
        
        
        if answerNums%10 == num%10 {
            strikeCounter += 1
        } else if answerNums/100 == num/100 {
            strikeCounter += 1
        } else if (answerNums-((answerNums/100)*100))/10 == (num-((num/100)*100))/10 {
            strikeCounter += 1
        }
        let answerArr = String(answerNums).compactMap{$0.wholeNumberValue}
        let tmpArr = String(tmpValue).compactMap{$0.wholeNumberValue}
        for i in answerArr {
            for j in tmpArr {
                if i == j {
                    ballCounter += 1
                }
            }
            
        }
    }
}
