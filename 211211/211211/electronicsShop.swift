//
//  electronicsShop:.swift
//  211211
//
//  Created by JUNGMIN KIM on 2021/12/11.
//

import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var allSumOfCost = [Int]()

    for costKeyboard in keyboards {
        for costDrive in drives {
            let sumOfCost = costKeyboard + costDrive
            allSumOfCost.append(sumOfCost)
        }
    }
    let possibleSum: [Int] = allSumOfCost.filter { $0 <= b }
    if possibleSum.count > 0 {
        return possibleSum.max() ?? 0
    } else {
        return -1
    }
}
