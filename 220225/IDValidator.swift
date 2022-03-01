//
//  IDValidator.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/02/27.
//

import Foundation


struct IDValidator{
    
    func validate(inputId: String) -> Bool{
        
        if !lengthValidate(inputId: inputId) {
            return false
        }
        return true
    }
    
    func lengthValidate(inputId: String) -> Bool {
        if inputId.count >= 5 && inputId.count <= 24{
            return true
        }
        return false
    }
    
    func repeatNumValidate(inputId: String) -> Bool {
        let tmpArr = Array(inputId)
        var repeatCounter = 0
        for i in 1 ..< tmpArr.count {
            if tmpArr[i] == tmpArr[i-1] {
                repeatCounter += 1
            }
            if repeatCounter == 3 {
                return false
            }
        }
        return true
    }
}
