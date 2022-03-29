//
//  intDivisor.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/03/28.
//

import Foundation

func divisor(_ arr: [Int], _ divisor: Int) -> [Int] {
    var resultArr = [Int]()
    for i in arr {
        if i % divisor == 0 && i >= 1{
            resultArr.append(i)
        }
    }
    //resultArr에 값이 1개 이상 담겨있을때(nil로 표현할 수 있는 방법?)
    if resultArr.count > 0 {
        return resultArr.sorted(by: <)
    } else {
        return [-1]
    }
}
