//
//  main.swift
//  week4day5
//
//  Created by JUNGMIN KIM on 2021/11/26.
//

import Foundation

print("Hello, World!")


var solution = Solution()
if solution.reverse(123) == 321 {
    print("reverse test Success")
} else {
    print("reverse test Fail")
}
if solution.reverse(-123) == -321 {
    print("reverse test Success")
} else {
    print("reverse test Fail")
}
if solution.reverse(120) == 21 {
    print("reverse test Success")
} else {
    print("reverse test fail")
}
if solution.reverse(0) == 0{
    print("reverse test Success")
} else {
    print("reverse test Success")
}


class Solution {
    func reverse(_ x: Int) -> Int {
        if x == 0 {
            return x
        }
        let str = String(x)

        var tmp = 0
        if x < 0 {
            let srt2 = str.dropFirst()
            let rev = String(srt2.reversed())
            tmp = Int(rev)!
            tmp *= -1
        } else {
            let revStr = String(str.reversed())
            tmp = Int(revStr)!
        }
        return tmp
    }
}
