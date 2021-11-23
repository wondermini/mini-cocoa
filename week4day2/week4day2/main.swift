//
//  main.swift
//  week4day2
//
//  Created by JUNGMIN KIM on 2021/11/23.
//

import Foundation

displayAllFiles(at: "/Users")

var fib = Fibonacci()

print(fib.run(n: 4))

var ladderGame = LadderGame()

ladderGame.printLadderArrs(ladderArrs: ladderGame.buildLadderArrs(numOfPeople: 3, height: 4))
