//
//  File.swift
//  week4day5
//
//  Created by JUNGMIN KIM on 2021/11/26.
//

import Foundation

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
