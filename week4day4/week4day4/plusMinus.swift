//
//  plusMinus.swift
//  week4day4
//
//  Created by JUNGMIN KIM on 2021/11/25.
//

import Foundation

func plusMinus(arr: [Int]) {
    // Write your code here

    var negativeNum = 0.0
    var zeroNum = 0.0
    var positiveNum = 0.0
     
    for i in arr {
        if i < 0 {
            //갯수를 원할때는 카운트하는 넘버 변수를 만들어서 하나씩 더해준다.
            negativeNum += 1
        } else if i == 0 {
            zeroNum += 1
        } else {
            positiveNum += 1
        }
    }
    let a = positiveNum/Double(arr.count)
    let b = negativeNum/Double(arr.count)
    let c = zeroNum/Double(arr.count)

    print(String(format: "%.6f", a))
    print(String(format: "%.6f", b))
    print(String(format: "%.6f", c))
}
