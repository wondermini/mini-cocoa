//
//  main.swift
//  week5day2
//
//  Created by JUNGMIN KIM on 2021/11/30.
//

import Foundation

print("Hello, World!")

if (timeConversion(s: "12:01:00PM") == "12:01:00") {
    print("timeConversion test success!")
} else {
    print("timeConversion test fail!")
}
if (timeConversion(s: "12:01:00AM") == "00:01:00") {
    print("timeConversion test success!")
} else {
    print("timeConversion test fail!")
}
if (timeConversion(s: "07:05:45PM") == "19:05:45") {
    print("timeConversion test success!")
} else {
    print("timeConversion test fail!")
}


countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])

var array = Array()
array.printArray(array: array.setBoolArray(lines: 7), newChar: "$")


var magicSquare = MagicSquare()
magicSquare.printArray(array: magicSquare.makeMagicSquare(row: 3))
magicSquare.printArray(array: magicSquare.makeMagicSquare(row: 5))
magicSquare.printArray(array: magicSquare.makeMagicSquare(row: 7))
