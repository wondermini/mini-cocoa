//
//  1008.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/18.
//

import Foundation

func divide(A: Decimal, B: Decimal) {
    let divide = A/B
    let numberFormater = NumberFormatter()
    numberFormater.maximumFractionDigits = 9
    let result = numberFormater.string(for: divide)!
    print(result)
}
