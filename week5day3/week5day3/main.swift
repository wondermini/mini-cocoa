//
//  main.swift
//  week5day3
//
//  Created by JUNGMIN KIM on 2021/12/01.
//
//유클리드 호제법
import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}

print(gcd(2,6))
print(getTotalX(a: [2,6], b: [24,36]))


var validator = IDvalidation()

//var password = readLine()!
//var result = validator.IDValidator(password: password)

//print("password=\(password) check result:\(result)")


print(validator.letterNumDashCheck(password: "1w-2368er"))
print(validator.letterNumDashCheck(password: "112344"))
print(validator.letterNumDashCheck(password: "888**"))
