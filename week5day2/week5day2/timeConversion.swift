//
//  File.swift
//  week5day2
//
//  Created by JUNGMIN KIM on 2021/11/30.
//

import Foundation

/*
 (s: "12:01:00PM") == "12:01:00") {
 (s: "12:01:00AM") == "00:01:00") {
 (s: "07:05:45PM") == "19:05:45") {
  */

func timeConversion(s: String) -> String {
    // Write your code here

    var result = ""
    if s.hasSuffix("AM") {
        result = String(s.dropLast(2))
        if s.hasPrefix("12") {
            result = String("00") + String(result.dropFirst(2))
        }

    } else { // 여기는 무조건 PM
        let time12Hour = String(s.dropLast(8))
        let time24Hour = Int(time12Hour)! + 12
        result = String(time24Hour) + String(s.dropFirst(2).dropLast(2))
        if s.hasPrefix("12") {
            result = String(s.dropLast(2))
        }
    }
    return result
}
