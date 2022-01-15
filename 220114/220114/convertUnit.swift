//
//  convertUnit.swift
//  220114
//
//  Created by JUNGMIN KIM on 2022/01/14.
//

import Foundation

struct Converter {
    static func convertToInch(inputUnit: String) -> String {
        var result = "0"
        if inputUnit.contains("cm inch") {
            var num = String(Float(inputUnit.filter("0123456789.".contains))! / 2.54)
            num.insert(contentsOf: "inch", at: num.endIndex)
            result = num
        }
        print(result)
        return result
    }
    
    static func convertToM(inputUnit: String) -> String {
        var result = "0"
    if inputUnit.contains("inch m") {
        var num = String(Float(inputUnit.filter("0123456789.".contains))!*)
    }
}
}
