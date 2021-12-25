//
//  main.swift
//  211225
//
//  Created by JUNGMIN KIM on 2021/12/25.
//

import Foundation

if isValid("()") == true {
    print("isValid test success")
} else {
    print("isValid test fail")
}

if isValid("()[]{}") == true {
    print("isValid test success")
} else {
    print("isValid test fail")
}

if isValid("(]") == false {
    print("isValid test success")
} else {
    print("isValid test fail")
}
