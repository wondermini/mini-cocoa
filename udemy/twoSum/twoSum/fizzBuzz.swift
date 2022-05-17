//
//  fizzBuzz.swift
//  twoSum
//
//  Created by JUNGMIN KIM on 2022/05/17.
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    var result = [String]()
    for i in 1 ... n {
        if i%3 == 0 {
            result.append("Fizz")
        } else if i%5 == 0 {
            result.append("Buzz")
        } else if i%15 == 0 {
            result.append("FizzBuzz")
        } else {
            result.append(String(i))
        }
    }
    print(result)
    return result
}
