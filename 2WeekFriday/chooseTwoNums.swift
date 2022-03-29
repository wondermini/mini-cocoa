//
//  choseTwoNums.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/03/29.
//

import Foundation

func chooseTwoNums(_ numbers:[Int]) -> [Int] {
    var tmpArr = [Int]()
    for i in 0..<numbers.count{
        for j in (i+1)..<numbers.count{
            tmpArr.append(numbers[i]+numbers[j])
        }
    }
    let unique = Array(Set(tmpArr)).sorted(by: <)
    return unique
}
