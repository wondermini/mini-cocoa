//
//  dayOfProgrammer.swift
//  211206
//
//  Created by JUNGMIN KIM on 2021/12/07.
//

import Foundation

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    // Write your code here
    var refund = 0
    var didnotEatItemCost = bill[k]
    let sumAllCost = bill.reduce(0, +)
    let annaPay = (sumAllCost - didnotEatItemCost)/2
    if annaPay == b {
        print("Bon Appetit")
    } else {
        if annaPay < b {
            refund = b - annaPay
        } else {
            refund = annaPay - b
        }
        print(refund)
    }
   
}
