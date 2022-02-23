//
//  main.swift
//  222018
//
//  Created by JUNGMIN KIM on 2022/02/18.
//

import Foundation

plus(A: 1, B: 2)

divide(A: 1, B: 3)

divide(A: 4, B: 5) 

printStar(lines: 5)

checkingProgram(eightNums: "1 2 3 4 5 6 7 8")

checkingProgram(eightNums: "8 7 6 5 4 3 2 1")

checkingProgram(eightNums: "8 1 7 2 6 3 5 4")

if testPointCounter(testCase: "OOXXOXXOOO") == 10 {
    print("testPointCounter is success")
}else{
    print("testPointCounter is fail")
}

if testPointCounter(testCase: "OOXXOOXXOO") == 9 {
    print("testPointCounter is success")
}else{
    print("testPointCounter is fail")
}

if testPointCounter(testCase: "OXOXOXOXOXOXOX") == 7 {
    print("testPointCounter is success")
}else{
    print("testPointCounter is fail")
}

if testPointCounter(testCase: "OOOOOOOOOO") == 55 {
    print("testPointCounter is success")
}else{
    print("testPointCounter is fail")
}

if testPointCounter(testCase: "OOOOXOOOOXOOOOX") == 30 {
    print("testPointCounter is success")
}else{
    print("testPointCounter is fail")
}

printAsciiValue(input: "A")
printAsciiValue(input: "C")
printAsciiValue(input: "0")
printAsciiValue(input: "9")
printAsciiValue(input: "9")
printAsciiValue(input: "z")

reCheckingProgram(eightNums: "10 11 12 13 14 15 16 17")
reCheckingProgram(eightNums: "8 7 6 5 4 3 2 1")
reCheckingProgram(eightNums: "1 2 3 4 5 6 7 8")
reCheckingProgram(eightNums: "99 100 101 102 103 104 105 106")

var myArray = ArrayPractice()
myArray.printArray(array: myArray.fillArray(line: 5))

