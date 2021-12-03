//
//  test.swift
//  week5day3
//
//  Created by JUNGMIN KIM on 2021/12/03.
//

import Foundation




struct Validator {
    func IDValidator(id: String) -> Bool {
        
        // 5글자 미만이거나 24글자 이상이면 실패
        if id.count < 5 || id.count > 24 {
            return false
        }
        
        // 영문 대소문자, 숫자, -만 포함 가능하고 그 외에는 실패
        for char in id {
            if !char.isLetter && !char.isNumber && !(char.asciiValue! == 45) {
                return false
            }
        }
        
        // idValidator
        // 같은 숫자가 연속해서 3회 이상 나오면 실패 111, 222
        // 숫자가 연번으로 3개나오면 실패 123, 234
        for index in 1..<id.count - 1 {
            let currentIndex = id.index(id.startIndex, offsetBy: index)
            let currentChar = id[id.index(id.startIndex, offsetBy: index)]
            
            //currentChar가 숫자일 경우에만 if 블럭이 실행됨.
            if let current = currentChar.wholeNumberValue {
                let prevChar = id[id.index(before: currentIndex)]
                let nextChar = id[id.index(after: currentIndex)]
                if let prev = prevChar.wholeNumberValue, let next = nextChar.wholeNumberValue {
                    if current == prev && current == next {
                        return false
                    } else if current - 1 == prev && current + 1 == next {
                        return false
                    }
                }
            }
         }

        
        // 위 조건을 모두 통과하면 성공
        return true
    }
    
    func passwordValidator(password: String) -> Int {
        var level = 3
        
        if password.count < 8 {
            if password.range(of: "^[0-9]*$", options: .regularExpression) != nil {
                level = 1
            }
            if password.range(of: "^[a-zA-Z]*$", options: .regularExpression) != nil {
                level = 2
            }
        } else {
            if password.range(of: "(?=.*[A-Za-z])(?=.*[\\d])", options: .regularExpression) != nil {
                level = 4
            }
            if password.range(of: "^(?=.*[A-Za-z])(?=.*[\\d])(?=.*[~!@#\\$%\\^&\\*])[\\w~!@#\\$%\\^&\\*]{8,}$", options: .regularExpression) != nil {
                level = 5
            }
        }
        return level
    }
    
    func socialNumberValidator(socialNumber: String) -> Bool {
        if socialNumber.range(of: "^[0-9-]*$", options: .regularExpression) != nil {
            let nums = socialNumber.filter { char in
                return char.isNumber
            }
            
            var index = 0
            let multiplier = [2,3,4,5,6,7,8,9,2,3,4,5]
            var result = nums.dropLast().reduce(0) { acc, cur in
                let sum = acc + (cur.wholeNumberValue! * multiplier[index])
                index += 1
                return sum
            }
            
            result = (11 - (result % 11)) % 10
            
            if result == socialNumber.last?.wholeNumberValue {
                return true
            }
        } else {
            print("Not a valid format!")
        }
        return false
    }
    
}
