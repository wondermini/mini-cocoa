//
//  main.swift
//  220117
//
//  Created by JUNGMIN KIM on 2022/01/17.
//

import Foundation

if getRow(3) == [1,3,3,1] {
    print("getRow test is success")
}else {
    print("getRow test is fail")
}


if getRow(0) == [1] {
    print("getRow test is success")
}else {
    print("getRow test is fail")
}


if getRow(1) == [1,1] {
    print("getRow test is success")
}else {
    print("getRow test is fail")
}

var myUnitConverter = UnitConverter()
myUnitConverter.cmInchTOInch(value: "18cm inch")
myUnitConverter.inchMToCm(value: "25.4inch m")
myUnitConverter.mToInch(value: "0.5m inch")

