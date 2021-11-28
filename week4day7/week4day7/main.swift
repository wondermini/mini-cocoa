//
//  main.swift
//  week4day7
//
//  Created by JUNGMIN KIM on 2021/11/28.
//

import Foundation

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case (let x, let y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"

let possibleNumber = "a123"

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

// Prints "The string "123" has an integer value of 123"

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

func trueFunc() -> Bool {
    return false
}

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

print(quotation)

let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)
// Prints two lines:
// one
// twothree

let goodStart = """
one
two

"""
print(goodStart + end)
// Prints three lines:
// one
// two
// three

print(pirntDiamond(lines: 8))
print(pirntDiamond(lines: 9))

print(print3515(lines: 15))

var myladderGame = LadderGame()
myladderGame.printLadder(ladderArr: myladderGame.bulidLadder(numOfPeople: myladderGame.enterNumOfpeople(), height: 4))
