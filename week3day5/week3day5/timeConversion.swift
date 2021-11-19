//
//  timeConversion.swift
//  week3day5
//
//  Created by JUNGMIN KIM on 2021/11/19.
//

import Foundation

// "07:05:45PM"
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
    // 앞의 두 글자를 복사해서 hh에 넣음
    guard let hh = Int(s.prefix(2)) else { fatalError("Bad input") }
    // 뒤의 두 글자를 뜯어서 time에 넣음.
    // String.dropLast는 Substring이라는 객체를 반환하는데 이를 String으로 캐스트 해 줘야만 함.
    var time = String(s.dropLast(2))
    // 맨 뒤에 PM이라는 문자가 있는지 체크한다
    if s.hasSuffix("PM") && hh < 12 {
        time = String(time.dropFirst(2))
        time = "\(hh + 12)\(time)"
        // 맨 뒤에 AM이 있고 시간이 12일 경우
    } else if s.hasSuffix("AM") && hh == 12 {
        // 맨 앞 두 글자를 뜯어낸 나머지 문자열을 time에 넣는다
        time = String(time.dropFirst(2))
        time = "00\(time)"
    }
    return time
}
