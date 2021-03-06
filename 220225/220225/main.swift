//
//  main.swift
//  220225
//
//  Created by JUNGMIN KIM on 2022/02/25.
//

import Foundation

var myArrayPractice = ArrayPractice()
myArrayPractice.printArray(arrs: myArrayPractice.fillArray(lines: 7))

var myMagicSquare = MagicSquare()
myMagicSquare.printMagicSquare(array: myMagicSquare.makeMagicSquare(row: 3))

print("abcd".count)

var myIdValidator = IDValidator()
if myIdValidator.repeatNumValidate(inputId: "111479A") == false {
    print("myIdValidator.repeatNumValidate test is success")
} else {
    print("myIdValidator.repeatNumValidate test is fail")
}

if myIdValidator.combinationValidate(inputId: "123759T") == false {
    print("myIdValidator.combinationValidate test is success")
} else {
    print("myIdValidator.combinationValidate test is fail")
}

if myIdValidator.lengthValidate(inputId: "126") == false {
    print("myIdValidator.lengthValidate test is success")
} else {
    print("myIdValidator.lengthValidate test is fail")
}

if myIdValidator.validate(inputId: "ABDkl15-1#") == false {
    print("myIdValidator.validate test is success")
} else {
    print("myIdValidator.validate test is fail")
}

var myPasswordValidator = PasswordValidator()
if myPasswordValidator.passwordValidate(password: "13456") == 1 {
    print("myPasswordValidator.passwordValidate.1 test is success")
} else {
    print("myPasswordValidator.passwordValidate.1 test is fail")
}

if myPasswordValidator.passwordValidate(password: "ABcJK") == 2 {
    print("myPasswordValidator.passwordValidate.2 test is success")
} else {
    print("myPasswordValidator.passwordValidate.2 test is fail")
}

if myPasswordValidator.passwordValidate(password: "ASDD284690") == 4 {
    print("myPasswordValidator.passwordValidate.4 test is success")
} else {
    print("myPasswordValidator.passwordValidate.4 test is fail")
}

if myPasswordValidator.passwordValidate(password: "-SJKL7jjjj4") == 5 {
    print("myPasswordValidator.passwordValidate.5 test is success")
} else {
    print("myPasswordValidator.passwordValidate.5 test is fail")
}

if myPasswordValidator.passwordValidate(password: "123456789") == 3 {
    print("myPasswordValidator.passwordValidate.3 test is success")
} else {
    print("myPasswordValidator.passwordValidate.3 test is fail")
}

var myValidatorSocialSecurityNum = ValidatorSocialSecurityNum()
if myValidatorSocialSecurityNum.validateSocialSecurityNum(front: "123456", rear: "1234567") == true {
    print("myValidatorSocialSecurityNum test is success")
} else {
    print("myValidatorSocialSecurityNum test is fail")
}

var seq = [1]

for i in 0 ..< 10 {
    print("Seq \(i): \(seq)")
    seq = lookAndSay(seq)
}

var myPracticeDictionary = PracticeDictionary()
if myPracticeDictionary.duplicateWords(inputWords: ["??????", "??????", "??????", "??????", "??????", "??????", "??????", "??????"]) == ["??????", "??????"] {
    print("myPracticeDictionary.duplicateWords test is success")
} else {
    print("myPracticeDictionary.duplicateWords test is fail")
}

if myPracticeDictionary.duplicateWords(inputWords: ["??????", "??????", "??????", "??????", "??????", "??????"]) == [] {
    print("myPracticeDictionary.duplicateWords test is success")
} else {
    print("myPracticeDictionary.duplicateWords test is fail")
}

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
    print(output)
    return output
}

// let strings??? ?????? ????????? ?????? ?????? ??????([String])????????? ????????????.
// ????????? ????????? ????????? ?????? ["OneSix", "FiveEight", "FiveOneZero"]??? ?????????.
