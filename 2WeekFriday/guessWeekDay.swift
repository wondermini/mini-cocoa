//
//  whichDay.swift
//  2WeekFriday
//
//  Created by JUNGMIN KIM on 2022/04/01.
//

import Foundation

func endOfMonth(atMonth: Int) -> Int {
    let set30 = [1,3,5,7,8,10,12]
    var endDay = 0
    if atMonth == 2{
        endDay = 29
    }else if set30.contains(atMonth) {
        endDay = 31
    }else {
        endDay = 30
    }
    return endDay
}

func guessWeekDay(_ month:Int, _ day:Int) -> String {
    var week = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    var totalDay = 0
    
    if month > 1 {
        for i in 1..<month{
            let endDay:Int = endOfMonth(atMonth: i)
        }
      totalDay = totalDay + day
    }else if month == 1{
        totalDay = day
    }
    
    var index = totalDay % 7
    if index > 0 {
        index = index - 1
    }
    return week[index]
}
