//
//  unit converter.swift
//  220117
//
//  Created by JUNGMIN KIM on 2022/01/18.
//

import Foundation

struct UnitConverter {
    func mToInch(value: String) {
        var tmpValue = value
        if tmpValue.contains("m inch") {
            tmpValue.removeLast(6)
            let inchValue = Double(tmpValue)! * 39.37
            print("\(inchValue)inch")
        }
    }

    func inchMToM(value: String) {
        var tmpValue = value
        if tmpValue.contains("inch m") {
            tmpValue.removeLast(6)
            let cmValue = Double(tmpValue)!*2.54
            let mValue = cmToM(value: cmValue)
            print("\(mValue)m")
        }
    }
    
    func cmToM(value: Double) -> Double {
        return value/100.0
    }

    func cmInchTOInch(value: String) {
        var tmpValue = value
        if tmpValue.contains("cm inch") {
            tmpValue.removeLast(7)
            let inchValue = Double(tmpValue)!/2.54
            print("\(inchValue)inch")
        }
        func mToCm(value: String) {
            var tmpValue = value
            if tmpValue.contains("m") {
                tmpValue.removeLast()
                let cmValue = Int(tmpValue)! * 100
                print("\(cmValue)cm")
            }
        }

        func inchToCm(value: String) {
            var tmpValue = value
            if tmpValue.contains("inch") {
                tmpValue.removeLast(4)
                let cmValue = Double(tmpValue)! * 2.54
                print("\(cmValue)cm")
            }
        }
    }
}
