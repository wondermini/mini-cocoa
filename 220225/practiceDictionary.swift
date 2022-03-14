//
//  practiceDictionary.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/03/13.
//

import Foundation

//
//func duplicateWords(inputWords:[String]) -> [String]{
//    var result = [String]()
//    let dictionary = Dictionary(grouping: inputWords, by: { $0 })
//    let counts = dictionary.mapValues { (value: [String]) in
//        return value.count
//    }
//
//        for item in counts {
//
//            if Int(item.value) >= 2 {
//                result.append(item.key)
//            }
//
//        }
//        return result
//
//}

struct practiceDictionary{
func duplicateWords(inputWords: [String]) -> [String]{
    var result = [String]()
    var counts : [String:Int] = [:]
    inputWords.forEach { counts[$0, default: 0] += 1 }
    for (key, value) in counts {
        if value >= 2{
            result.append(key)
        }
    }
    print(result)
    return result
}
}
