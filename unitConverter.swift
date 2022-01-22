//
//  unitConverter.swift
//  220120
//
//  Created by JUNGMIN KIM on 2022/01/20.
//

import Foundation

struct UnitConverter {
    func converter(value: String) -> String {
        var tmpValue = value

        if tmpValue.contains("cm inch") {
            tmpValue.removeLast(7)
            let inch = cmToInch(value: Double(tmpValue)!)
            return String(format: "%f inch", inch)

        } else if tmpValue.contains("inch m") {
            tmpValue.removeLast(6)
            let cm = inchToCm(value: Double(tmpValue)!)
            let m = cmToM(value: cm)
            return String(format: "%f m", m)
        } else if tmpValue.contains("m inch") {
            tmpValue.removeLast(6)
            let cm = mToCm(value: Double(tmpValue)!)
            let inch = cmToInch(value: cm)
            return String(format: "%f inch", inch)
        } else if tmpValue.contains("cm") {
            tmpValue.removeLast(2)
            let m = cmToM(value: Double(tmpValue)!)
            return String(format: "%f m", m)
        } else if tmpValue.contains("m") {
            tmpValue.removeLast(1)
            let cm = mToCm(value: Double(tmpValue)!)
            return String(format: "%f cm", cm)
        } else if tmpValue.contains("inch") {
            tmpValue.removeLast(4)
            let cm = inchToCm(value: Double(tmpValue)!)
            return String(format: "%f cm", cm)
        }

        return ""
    }

    func cmToInch(value: Double) -> Double {
        return value/2.54
    }

    func inchToCm(value: Double) -> Double {
        return value*2.54
    }

    func cmToM(value: Double) -> Double {
        return value/100
    }

    func mToCm(value: Double) -> Double {
        return value*100
    }
}
