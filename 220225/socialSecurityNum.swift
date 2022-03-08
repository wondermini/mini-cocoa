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
        var n = 0
        let forntArr = Array(arrayLiteral: Int(front))
        let rearArr = Array(arrayLiteral: Int(rear))
        for i in forntArr{
            for j in 2...7{
               n += (i*j)
            }
        }
        
    }
}
