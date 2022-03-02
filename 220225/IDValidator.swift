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
        if !repeatNumValidate(inputId: inputId){
            return false
        }
    //        if !combinationValidate(inputId: inputId){
    //            return false
    //        }
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
        var repeatCounter = 1
        for i in 1 ..< tmpArr.count {
            if tmpArr[i] == tmpArr[i-1] {
                repeatCounter += 1
            } else {
                repeatCounter = 1
            }
            if repeatCounter == 3 {
                return false
            }
        }
        return true
    }
    
    func combinationValidate(inputId: String) -> Bool {
        let dash = CharacterSet(charactersIn: "-")
        let allCharacterSet = dash.union(CharacterSet.decimalDigits).union(CharacterSet.letters)
        let tmpSet = CharacterSet(charactersIn: inputId)
        if tmpSet.isSubset(of: allCharacterSet){
            return true
        }
        return false
    }
    
    func continuousNumValidate(inputId: String) -> Bool {
        let tmpArr = Array(inputId)
        var contionuousNumCounter = 1
        for index in 0 ..< tmpArr.count-1 {
            //숫자인지 판별
            if tmpArr[index].isNumber {
                if Int(String(tmpArr[index]))!+1 == Int(String(tmpArr[index+1]))! {
                    contionuousNumCounter += 1
                }else{
                    contionuousNumCounter = 1
                }
                if contionuousNumCounter == 3{
                    return false
                }
            }
        }
        return false
    }
}
