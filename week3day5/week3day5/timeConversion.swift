//
//  timeConversion.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/19.
//

import Foundation

//"07:05:45PM"
/*
func timeConversion(s: String) -> String {
    // Write your code here
    let index = s.index(s.startIndex, offsetBy: 2)
    let myS = s[..<index]
    var result = ""
    var temp = 0
    if s.contains("PM"){
        temp = Int(myS) ?? 0
        temp += 12
    }
    
    return result
}
*/
func timeConversion(s: String) -> String {
    // Write your code here
    guard let hh = Int(s.prefix(2)) else { fatalError("Bad input")}
    var time = String(s.dropLast(2))
    if s.hasSuffix("PM"), hh < 12{
        time = String(time.dropFirst(2))
        time = "\(hh+12)\(time)"
    }else if s.hasSuffix("AM"), hh == 12 {
        time = String(time.dropFirst(2))
        time =  "00\(time)"
    }
    return time
}

