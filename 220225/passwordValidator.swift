//
//  passwordValidator.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/03.
//

import Foundation

struct CheckPasswordValidator {
    func passwordValidator(password: String) -> Int {
        var result = 0

        if password.filter({$0.isNumber}).count == password.count && password.count < 8 {
                result = 1
        }else if password.filter({$0.isLetter}).count == password.count && password.count < 8 {
                    result = 2
            }else if   password.filter({$0.isNumber}).count >= 1 || password.count >= 8{
                result = 3
            }else if password.range(of: <#T##StringProtocol#>)
        }
        return result
    }
}
