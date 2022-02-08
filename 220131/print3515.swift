//
//  print3515.swift
//  220131
//
//  Created by JUNGMIN KIM on 2022/02/08.
//

import Foundation

func print3515(lines: Int) -> [String] {
    var result = [String]()
    for i in 1 ... lines {
        if i%15 == 0 {
        result.append("🐻❄️")
        }else if i%3 == 0 {
            result.append("🐻")
        }else if i%5 == 0{
            result.append("❄️")
        } else {
            result.append(String(i))
        }
    }
    return result
}
