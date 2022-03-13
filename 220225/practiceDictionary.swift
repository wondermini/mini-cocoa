//
//  practiceDictionary.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/13.
//

import Foundation


func duplicateWords(inputWords:[String]) -> [String]{
    var result = [String]()
    let dictionary = Dictionary(grouping: inputWords, by: { $0 })
    let counts = dictionary.mapValues { (value: [String]) in
        return value.count
    }
    
        for item in counts {
            
            if Int(item.value) >= 2 {
                result.append(item.key)
            }
            
        }
        return result
    
}
