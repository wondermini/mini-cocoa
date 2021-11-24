//
//  fibonacci.swift
//  week4day2
//
//  Created by JUNGMIN KIM on 2021/11/23.
//

import Foundation

struct Fibonacci {
    func run(n: Int) -> Int {
        if n==1 || n==2 {
            return 1
        }
        return run(n: n-1) + run(n: n-2)
    }

    func forRun(n: Int) -> Int {
        var fiboArr = [1, 1]
        for i in 2 ..< n {
            fiboArr.append(fiboArr[i-1] + fiboArr[i-2])
        }
        return fiboArr[n-1]
    }
}
