//
//  main.swift
//  mini-study
//
//  Created by JUNGMIN KIM on 2021/11/01.
//

import Foundation

print(10+10)
    
//add(number1: 123, number2:234)
func add(number1 :  Int, number2: Int) -> Int {
    let sum = number1 + number2
    return sum
}
print(add(number1: 123, number2: 234))

//add(number1: 10, number2: 20, number3: 30)
func add(number1 : Int, number2 : Int, number3 : Int) -> Int{
    let sum = number1 + number2 + number3
    return sum
}
print(add(number1: 10, number2: 20, number3: 30))
    
//substract(number1: 456, number2: 123)
func substract(number1 : Int, number2 : Int) -> Int {
    return number1 - number2
}
print(substract(number1: 456, number2: 123))

//square(number: 8)
func square(number : Int) -> Int {
    return number * number
}
print(square(number: 8))
    
//divide(number: 256, divisor: 8)
func divide(number : Int, divisior : Int) -> Int{
    return number / divisior
}
print(divide(number: 256, divisior: 8))


//exercise
//inch -> cm
func convertInchToCm(fromInches : Float) -> Float{
    return fromInches * 2.54
}
print(convertInchToCm(fromInches: 50))
print(convertInchToCm(fromInches: 15))

//cm->m
func cmToM(_ fromCm: Float) -> Float {
    return fromCm / 100
}

// m->cm
func covertMeterToCm(fromMeter: Float) -> Float {
    return fromMeter * 100
}
    
//exercise
//cm -> inch
func convertCmToInches(fromCM : Float) -> Float{
    return fromCM / 2.54
}
print(convertCmToInches(fromCM : 254))
print(convertCmToInches(fromCM : 75))
    
//exercise
//m -> inch

func convertMeterToInches(fromMeter : Float) -> Float{
    return (fromMeter * 100) / 2.54
}
print(convertMeterToInches(fromMeter : 1.5))
print(convertMeterToInches(fromMeter : 0.4))

// difference between float and double
print(Double.pi) // 3.141592653589793
print(Float.pi) // 3.1415925

//additionalMission
func eraseCm(_ input:String) -> Float{
    let drop_last = String(input.dropLast(2)) //스트링의 마지막에서 'cm'을 제거
    guard let result = Float(drop_last) else { return 0.0 }
    return result / 100
}
func eraseM(_ input: String) -> Float{
    let drop_last = String(input.dropLast(1))
    guard let result = Float(drop_last) else { return 0.0 }
    return result * 100
}

func eraseInch(_ input: String) -> Float{
    let drop_last = String(input.dropLast(4))
    guard let result = Float(drop_last) else { return 0.0 }
    return result * 2.54
}
//https://gonslab.tistory.com/21
func cmToInch(_ input: String) -> Float{
    let drop_last = String(input.dropLast(2))
    guard let result = Float(drop_last) else { return 0.0 }
    return result / 2.54
}

func inchToCm(_ input: String) -> Float{
    let drop_last = String(input.dropLast(4))
    guard let result = Float(drop_last) else { return 0.0 }
    return (result * 2.54)
}

func mToInch(_ input: String) -> Float{
    let drop_last = String(input.dropLast(1))
    guard let result = Float(drop_last) else { return 0.0 }
    return (result * 100) / 2.54
}

func mToCm(_ input: String) -> Float{
    let drop_last = String(input.dropLast(1))
    guard let result = Float(drop_last) else { return 0.0 } // 가드엘스 nil 값이 들어올 경우 0을 반환하기위함
    return (result * 100)
}

func cmToInch(_ input: Float) -> Float{
    return input / 2.54
}

func convertUnit(_ input: String) -> String{
    let inputArr = input.components(separatedBy: " ")
    if inputArr.count == 1 {
        if input.contains("cm"){
            return String(eraseCm(input)) + " m"
        }
        if input.contains("m"){
            return String(eraseM(input)) + " cm"
        }
        if input.contains("inch"){
            return String(eraseInch(input)) + " cm"
        }
    }else {
        if inputArr[0].contains("cm"){
            return String(cmToInch(inputArr[0])) + " inch"
        }
        if inputArr[0].contains("inch"){
            return String(cmToM(inchToCm(inputArr[0]))) + " m"
        }
        if inputArr[0].contains("m"){
            return String(cmToInch(mToCm(inputArr[0]))) + " inch"
        }
        
    }
    return "ERROR"
}
//https://stackoverflow.com/questions/25678373/split-a-string-into-an-array-in-swift
//https://stackoverflow.com/questions/24034043/how-do-i-check-if-a-string-contains-another-string-in-swift
//https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html

print(convertUnit("18cm inch"))
print(convertUnit("25.4inch m"))
print(convertUnit("0.5m inch"))
print(convertUnit("183cm"))
print(convertUnit("3.14m"))
print(convertUnit("2.54inch"))



