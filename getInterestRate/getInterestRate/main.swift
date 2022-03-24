//
//  main.swift
//  getInterestRate
//
//  Created by JUNGMIN KIM on 2022/03/20.
//

import Foundation

let interestRate = InterestRate()

// func testInterestOneDay(unitDay: Int) -> Double {
//    for i in stride(from: 1, to: unitDay, by: 1) {
//        let depositAmountPerOne = Double(i) + Double(i) * interestRate.getInterestRate(byDay: unitDay)
//        return depositAmountPerOne
//    }
// }
//
// func testInterestTenDays(unitDay: Int) -> Double {
//    for i in stride(from: 1, to: unitDay, by: 10) {
//        let depositAmountPerTen = Double(i) + Double(i) * interestRate.getInterestRate(byDay: unitDay)
//        return depositAmountPerTen
//    }
// }

// var baseballGame = BaseballGame()
//
// baseballGame.playGame()

//var num1: Int = 10
//var num2: Int = 12
//
//var largeNum: Int
//if num1 > num2 {
//    largeNum = num1
//} else {
//    largeNum = num2
//}
//
//print(largeNum)

 var num1:Int = 10
 var num2:Int = 12

 var largeNum:Int = num1 > num2 ? num1 : num2
 print(largeNum)
