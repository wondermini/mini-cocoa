//
//  IDValidator.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/02/27.
//

import Foundation


struct IDValidator{
    
    func IDValidator(password: String) -> Bool{
        let characterSet = password.compactMap{Character(String($0))}
       if characterSet.count < 5 || characterSet.count > 24{
            return false
       }else if characterSet.
    }
}
