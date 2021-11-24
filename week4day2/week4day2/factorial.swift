//
//  factorial.swift
//  week4day2
//
//  Created by JUNGMIN KIM on 2021/11/24.
//

import Foundation


struct Factorial {
   func runRecursive(n : Int) -> Int {
        if n==1 {
            return 1
        }
        let result = runRecursive(n: n-1)*n
        return result
    }
    func runLoop(n : Int) -> Int {
        var result = 1
        for i in 1...n {
            result *= i
        }
        return result
    }
}
