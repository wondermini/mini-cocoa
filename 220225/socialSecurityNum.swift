//
//  socialSecurityNum.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/07.
//

import Foundation

struct ValidatorSocialSecurityNum{
    func validateSocialSecurityNum(front: String, rear: String) -> Bool{
        if front.count < 6 {
            return false
        }
        if rear.count < 7 {
            return false
        }
        var n = Int()
        var k = Int()
        let nums = [8,9,2,3,4,5]
//        let forntArr = Array(front)
//        let rearArr = Array(rear)
        let frontArr = front.compactMap{$0.wholeNumberValue}
        let rearArr = rear.compactMap{$0.wholeNumberValue}
        for i in frontArr{
            for j in 2...7{
               n += (i*j)
            }
        }
        for k in rearArr{
            for g in nums{
                n += (k*g)
            }
        }
        k += (11-(n%11))%10
        if k == rearArr[7]{
            return true
        }else{
            return false
        }
        
    }
}
