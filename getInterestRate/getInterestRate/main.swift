//
//  main.swift
//  getInterestRate
//
//  Created by JUNGMIN KIM on 2022/03/20.
//

import Foundation

print("Hello, World!")

func testInterestOneDay(unitDay: Int) -> Double {
    for i in stride(from:1 ,to:unitDay ,by:1 ){
        let depositAmountPerOne = Double(i) + Double(i) * getInterestRate(byDay: unitDay)
        return depositAmountPerOne
    }
}

func testInterestTenDays(unitDay: Int) -> Double {
    for i in stride(from:1 ,to:unitDay ,by:10){
        let depositAmountPerTen = Double(i) + Double(i) * getInterestRate(byDay: unitDay)
        return depositAmountPerTen
    }
}
