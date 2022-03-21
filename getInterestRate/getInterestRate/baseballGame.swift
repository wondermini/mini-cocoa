//
//  baseballGame.swift
//  getInterestRate
//
//  Created by JUNGMIN KIM on 2022/03/21.
//

import Foundation

struct BaseballGame {
    var answerNums = 0

    func countStrike() {
        print("세 자리 숫자를 입력해 주세요.")
        if let tmpValue = readLine() {
            if let num = Int(tmpValue) {
                print("입력값은 \(num) 입니다.")

                let answerArr = Array(arrayLiteral: answerNums)
                let tmpArr = tmpValue.compactMap { $0.wholeNumberValue }
                let sliceTmpArr = tmpArr[1...2]
                let sliceAnswerArr = answerArr[1...2]
                
                var sliceAnswerString = ""
                _ = sliceAnswerArr.map { sliceAnswerString = sliceAnswerString + "\($0)" }
                let sliceAnswerInt = Int(sliceAnswerString)
                
                var sliceTmpString = ""
                _ = sliceTmpArr.map { sliceTmpString = sliceTmpString + "\($0)" }
                let sliceTmpInt = Int(sliceTmpString)
                
                var strikeCounter = 0
                if answerNums%10 == num%10 {
                    strikeCounter += 1
                } else if answerNums/100 == num/100 {
                    strikeCounter += 1
                } else if sliceAnswerInt!/10 == sliceTmpInt!/10 {
                    strikeCounter += 1
                }

            } else {
                print("입력값 숫자가 아닙니다. 입력갑 = \(tmpValue)")
            }
        } else {
            print("입력값이 없습니다.")
        }
    }
}
