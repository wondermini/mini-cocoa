//
//  lengthOfLongestSubstring.swift
//  211216
//
//  Created by JUNGMIN KIM on 2021/12/16.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        } else if s.count == 1 {
            return 1
        }
        
        var maxLength = 0
        var temp = [Character]()
        let charArray = Array(s)
        temp.append(charArray[0])
               
        for i in 1 ..< charArray.count {
            if let index = temp.firstIndex(of: charArray[i]) {
                temp.removeFirst(index + 1)
            }
            temp.append(charArray[i])
            maxLength = max(maxLength, temp.count)
        }
        return maxLength
    }
}
        
//        var result = [String]()
//        let charArr = Array(s)
//        for index in 0 ..< s.count{
//            if index == s.count-1 {
//                if !result.contains(String(charArr[index])) {
//                    result.append(String(charArr[index]))
//                }
//            } else if charArr[index] != charArr[index+1] && !result.contains(String(charArr[index])){
//                result.append(String(charArr[index]))
//            }else{
//                result.append(String(0))
//            }
//        }
//        var counter = 0
//        var maxCounter = 1
//        for element in result{
//            if element != String(0){
//                counter += 1
//            }else{
//                if maxCounter < counter{
//                    maxCounter = counter
//                }
//                counter = 0
//            }
//        }
//        if maxCounter < counter{
//            maxCounter = counter
//        }
//        print(result)
//        print(maxCounter)
//        return maxCounter
//    }
//
// }
