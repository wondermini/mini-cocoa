//
//  main.swift
//  220112
//
//  Created by JUNGMIN KIM on 2022/01/12.
//

import Foundation

// 옵셔널이란? 값이 있는지 없는지 모른다.
var somevVariable : Int? = nil

if somevVariable == nil {
    somevVariable = 90
}

// 언랩핑이란? 랩 즉 감싸져있는 것을 벗기는 것

if let otherVariable = somevVariable {
    print("언래핑 되었다. 즉 값이 있다.　otherVariable : \(otherVariable)")
} else {
    print("값이 없다.")
}

somevVariable = nil
//　someVaralbe 이 버어있으면 즉 값이 없으면 기본값으로 아래 값을 넣겠음.
let myValue = somevVariable ?? 10
print("myValue: \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(firstValue)
unwrap(secondValue)

func unwrap(_ parameter: Int?){
    print{"unwrap() called"}
    //값이 없으면 리턴 해버린다.
    guard let unWrappedParam = parameter else{
        return
    }
    print("unWrappedParam: \(unWrappedParam")
}
