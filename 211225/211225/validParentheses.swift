//
//  validParentheses.swift
//  211225
//
//  Created by JUNGMIN KIM on 2021/12/25.
//

import Foundation

func isValid(_ s: String) -> Bool {
    let arr = Array(s)
    var stack = [Character]()
    let openChar = "([{"
    let brackets: [Character: Character] = [")": "(", "]": "[", "}": "{"]

    for i in arr {
        if openChar.contains(i) {
            stack.append(i)
        } else {
            if stack.isEmpty {
                return false
            }

            if stack.last == brackets[i] {
                stack.removeLast()
            } else {
                return false
            }
        }
    }

    if stack.isEmpty {
        return true
    } else {
        return false
    }
}
