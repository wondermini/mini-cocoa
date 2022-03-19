//
//  measurement.swift
//  measurementApp
//
//  Created by JUNGMIN KIM on 2022/03/18.
//

import Foundation

enum Unit: String {
    case inch
    case cm
    case m
}

struct Measurement {
    var value: Int
    var unit: Unit
}

struct MeasureApp {
    func convertMeasurement(inputValue: Double, fromUnit: Unit, toUnit: Unit) -> String {
        var tmpValue = 0.0
        if fromUnit == Unit.inch, toUnit == Unit.cm {
            tmpValue += Double(inputValue * 2.54)
            return String(tmpValue) + toUnit.rawValue
        } else if fromUnit == Unit.cm, toUnit == Unit.inch {
            tmpValue += Double(inputValue / 2.54)
            return String(tmpValue) + toUnit.rawValue
        } else {
            tmpValue += Double(inputValue * 39.37)
            return String(tmpValue) + toUnit.rawValue
        }
    }
}
