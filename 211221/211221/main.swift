//
//  main.swift
//  211221
//
//  Created by JUNGMIN KIM on 2021/12/21.
//

import Foundation

//옵셔널이란?
//값이 있는지 없는지 모른다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}
print("someVariable:", someVariable)

//언랩핑이란? 랩 즉 감싸져있는 옵셔널을 벗기는 것
if let otherVariable = someVariable {
    print("언래핑 되었다. 즉 값이 있다. otherVariable:\(otherVariable)")
}else {
    print("값이 없다")
}
var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)

func unwrap(_ parameter:Int?) {
    print("unwrap() called")
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParm: \(unWrappedParam)")
}
