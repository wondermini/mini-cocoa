//
//  print3515.swift
//  week4day7
//
//  Created by JUNGMIN KIM on 2021/11/28.
//

import Foundation

func print3515(lines: Int) -> [String] {
    var resultArr = [String]()
    for i in 1 ... lines {
        if i%15 == 0 {
            resultArr.append(String("👏🏼🙏"))
        } else if i%5 == 0 {
            resultArr.append(String("🙏"))
        } else if i%3 == 0 {
            resultArr.append(String("👏🏼"))
        }else{
            resultArr.append(String(i))
        }
    }
    return resultArr
}
