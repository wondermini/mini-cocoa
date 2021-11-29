//
//  main.swift
//  week5day1
//
//  Created by JUNGMIN KIM on 2021/11/29.
//

import Foundation

print("Hello, World!")

miniMaxSum(arr: [1, 2, 3, 4, 5])

print(birthdayCakeCandles(candles: [3, 2, 1, 3]))

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { number -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)
// strings is inferred to be of type [String]
// its value is ["OneSix", "FiveEight", "FiveOneZero"]

struct Person {
    let name: String
    let address: String
    let age: Int
    let income: Double
    let cars: [String]
}

let peopleArray = [Person(name: "Santosh", address: "Pune, India", age: 34, income: 100000.0, cars: ["i20", "Swift VXI"]),
                   Person(name: "John", address: "New York, US", age: 23, income: 150000.0, cars: ["Crita", "Swift VXI"]),
                   Person(name: "Amit", address: "Nagpure, India", age: 17, income: 200000.0, cars: Array())]

var name: [String] = Array()

print(peopleArray.map({$0.cars}))
print(peopleArray.map({$0.address}))
print(peopleArray.map({$0.age}))

var myArray = ArrayPractice()
myArray.printArray(array:myArray.fillArray(line: 6))
