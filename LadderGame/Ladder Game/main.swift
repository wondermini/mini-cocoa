//
//  main.swift
//  Ladder Game
//
//  Created by JUNGMIN KIM on 2021/11/04.
//

import Foundation

struct LadderGame{
    func inputNumberOfPerson()-> Int{
        print("인원을 입력해주세요.: ")
        let numberOfPersons = Int(readLine() ?? "")
        print("사다리게임 참여인원은 \(String(describing: numberOfPersons))명 입니다.")
        return numberOfPersons!
    }
}

var ladderGame = LadderGame()

print(ladderGame.inputNumberOfPerson())
