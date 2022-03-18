//
//  measurement.swift
//  measurementApp
//
//  Created by JUNGMIN KIM on 2022/03/18.
//

import Foundation

enum Unit: String {
    case inch = "inch"
    case cm = "cm"
    case m = "m"

//    var description: String {
//        switch self {
//        case .inch: return "inch"
//        case .cm: return "cm"
//        case .m: return "m"
//        }
//    }
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
//            } else if fromUnit == Unit.m, toUnit == Unit.inch {
        } else {
            tmpValue += Double(inputValue * 39.37)
            return String(tmpValue) + toUnit.rawValue
        }
    }
}
