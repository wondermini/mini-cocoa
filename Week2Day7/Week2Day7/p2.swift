//
//  p2.swift
//  Week2Day7
//
//  Created by JUNGMIN KIM on 2021/11/14.
//

import Foundation

func idValidator(password: String) -> Bool {
    print("password:\(password)")
    let numbers = "0123456789"
    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    let mark = "-"
    let allowedCharacterSet = CharacterSet(charactersIn: numbers+letters+mark)

    // 패스워드 길이 체크
    if password.count < 5 || password.count > 24 {
        return false
    }

    // 허락된 문자 이외에 문자가 있는지 체크
    let inputCharacterSet = CharacterSet(charactersIn: password)
    if allowedCharacterSet.isSuperset(of: inputCharacterSet) == false {
        return false
    }

    return true
}
