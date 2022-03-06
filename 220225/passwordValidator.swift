//
//  passwordValidator.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/03.
//

import Foundation

struct PasswordValidator {
    func passwordValidate(password: String) -> Int {
        var result = 0
//        let digitCharacters = CharacterSet.decimalDigits
//        let alphabetCharacters = CharacterSet.letters
//        let specialSymbolCharacters = CharacterSet.symbols
        if level5check(password: password) {
            result = 5
        } else if password.filter({ $0.isLetter }).count >= 1, password.filter({ $0.isNumber }).count >= 1, password.count >= 8 {
            result = 4
        } else if password.filter({ $0.isLetter }).count == password.count, password.count < 8 {
            result = 2
        } else if password.filter({ $0.isNumber }).count == password.count, password.count < 8 {
            result = 1

//            }else if password.rangeOfCharacter(from: digitCharacters) != nil && password.rangeOfCharacter(from: alphabetCharacters) != nil && password.rangeOfCharacter(from: specialSymbolCharacters) != nil{
//                result = 4

        } else {
            result = 3
        }
        print("passwordValidate(password:\(password)) result:\(result)")
        return result
    }
    
    func level5check(password: String) -> Bool {
        let specialSymbol = CharacterSet.init(charactersIn: "!@#$%^&*()_-+")
        if password.filter({$0.isNumber}).count >= 1 {
            if password.filter({$0.isLetter}).count >= 1 {
                if (password.rangeOfCharacter(from: specialSymbol) != nil){
                    if password.count >= 8 {
                        return true
                    }
                }
            }
        }
        return false
        
    }
    
}
