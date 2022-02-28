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
        
        
       
    }
    
    func lengthValidate(inputId: String) -> Bool {
        return inputId.count >= 5 && inputId.count <= 24
    }
}
