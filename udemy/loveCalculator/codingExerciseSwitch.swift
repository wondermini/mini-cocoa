//
//  codingExerciseSwitch.swift
//  loveCalculator
//
//  Created by JUNGMIN KIM on 2022/04/28.
//

import Foundation


func dayOfTheWeek(day: Int) {
    
    switch day {
    case 1 :
        print("Monday")
    case 2 :
        print("Tuseday")
    case 3 :
        print("Wednesday")
    case 4 :
        print("Thursday")
    case 5 :
        print("Friday")
    case 6 :
        print("Saturday")
    case 7 :
        print("Sunday")
    default:
        print("Error")
    }
}
