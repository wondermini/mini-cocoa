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
if myIdValidator.repeatNumValidate(inputId: "111479A") == false{
    print("myIdValidator test is success")
}else{
    print("myIdValidator test is fail")
}

if myIdValidator.combinationValidate(inputId: "123759T") == false{
    print("myIdValidator test is success")
}else{
    print("myIdValidator test is fail")
}
