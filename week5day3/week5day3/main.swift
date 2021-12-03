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


var validator = IdValidatior()

//var password = readLine()!
//var result = validator.IDValidator(password: password)

//print("password=\(password) check result:\(result)")

var testResult = false
var input = ""

input = "1234"
testResult = validator.lengthCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == false ? "Success" : "Fail")")

input = "12345"
testResult = validator.lengthCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == true ? "Success" : "Fail")")

input = "123456789012345678901234"
testResult = validator.lengthCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == false ? "Success" : "Fail")")

input = "12345678901234567890123"
testResult = validator.lengthCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == true ? "Success" : "Fail")")


var passwordCharSet = CharacterSet()

var dash = CharacterSet()
dash.insert("-")
let passwordAllowedCharSet = CharacterSet.uppercaseLetters.union(CharacterSet.lowercaseLetters).union(CharacterSet.decimalDigits).union(dash)

passwordCharSet.insert(charactersIn: "Ab1-")
print(passwordAllowedCharSet.isSuperset(of: passwordCharSet))

input = "ASDasd1238*#$"
testResult = validator.letterNumDashCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == false ? "Success" : "Fail")")

input = "ASDasd1234-"
testResult = validator.letterNumDashCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == true ? "Success" : "Fail")")

input = "ASDasd111"
testResult = validator.consecutiveNumAndIncreamentNumCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == false ? "Success" : "Fail")")

input = "ASDasd123"
testResult = validator.consecutiveNumAndIncreamentNumCheck(inputId: input)
print("validator.lengthCheck input:\(input) testResult:\(testResult == false ? "Success" : "Fail")")

//print(validator.letterNumDashCheck(password: "112344"))
//print(validator.letterNumDashCheck(password: "888**"))

//print("(")

let string = "adc123368"
let first = string[string.startIndex]
let secondIndex = string.index(after: string.startIndex)
let second = string[secondIndex]
print(first)
print(second)
let lastIndex = string.index(before: string.endIndex)
let last = string[lastIndex]
print(last)

let thirdIndex = string.index(string.startIndex, offsetBy: 2)
let thrid = string[string.index(string.startIndex, offsetBy: 2)]
print(thrid)
let start = string.index(after: string.startIndex)
let end = string.index(string.endIndex, offsetBy: -6)
let substring = string[start...end]
print(substring)
let casedSubstring = String(substring)

let testVal = readLine()!
