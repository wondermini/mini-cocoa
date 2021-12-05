//
//   subarrayDivision.swift
//  211205
//
//  Created by JUNGMIN KIM on 2021/12/05.
//

import Foundation


func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    var resultCounter = 0
    for index in 0...s.count-m {
        var total = 0
        for j in index..<index+m{
         total += s[j]
        }
        if total == d {
          resultCounter += 1
      }
    }
    return resultCounter
}
