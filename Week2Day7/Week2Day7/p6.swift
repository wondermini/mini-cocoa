//
//  p6.swift
//  Week2Day7
//
//  Created by JUNGMIN KIM on 2021/11/14.
//

import Foundation

func duplicatedWords(inputWords: [String]) -> [String] {
    var tempSet = Set<String>()
    var resultSet = Set<String>()
    
    for word in inputWords{
        if tempSet.contains(word){
            resultSet.insert(word)
        }else{
            tempSet.insert(word)
        }
    }
    return Array(resultSet)
}
