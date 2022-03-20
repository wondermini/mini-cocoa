//
//  getInterestRate.swift
//  getInterestRate
//
//  Created by JUNGMIN KIM on 2022/03/20.
//

import Foundation

struct InterestRate {
    func getInterestRate(byDay: Int) -> Double {
        switch byDay {
        case 0...90:
            return 0.5
        case 91...180:
            return 1
        case 181...3:
            return 2
        default:
            return 5.6
        }
    }

    func calculateAmount(day: Int, amount: Int) -> Double {
        let depositAmount = Double(amount) + Double(amount) * getInterestRate(byDay: day)
        return depositAmount
    }
}
