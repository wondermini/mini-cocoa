//
//  main.swift
//  220114
//
//  Created by JUNGMIN KIM on 2022/01/14.
//

import Foundation

//Mission1
if convertToCM(fromInches: 50) == 127 {
    print("convertToInches test is success")
}else {
    print("convertToInches test is fail")
}

if convertToCM(fromInches: 15) == 38.1 {
    print("convertToInches test is success")
}else {
    print("convertToInches test is fail")
}


//Mission2
if convertToInches(fromCM: 254) == 100 {
    print("convertToInches test is success")
}else {
    print("convertToInches test is fail")
}

if convertToInches(fromCM: 75) == 29.52756 {
    print("convertToInches test is success")
}else {
    print("convertToInches test is fail")
}

//Mission3
if convertToInches2(fromMeter: 1.5) == 59.055 {
    print("convertToInches test is success")
}else {
    print("converToInches test is fail")
}

if convertToInches2(fromMeter: 0.4) == 15.748{
    print("convertToInches test is success")
}else {
    print("converToInches test is fail")
}

//Additional Mission
if Converter.convertUnit(inputUnit: "18cm inch") == "7.086614inch" {
    print("convertUnit test is success")
}else {
    print("convertUnit test is fail")
}
