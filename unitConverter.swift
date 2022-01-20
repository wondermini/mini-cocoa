//
//  unitConverter.swift
//  220120
//
//  Created by JUNGMIN KIM on 2022/01/20.
//

import Foundation

struct UnitConverter {
    func mToInch(value: String) -> String {
        var tmpValue = value
        if tmpValue.contains("m inch") {
            tmpValue.removeLast(6)
            let inchValue = Double(tmpValue)! * 39.37
            print("\(inchValue)inch")
        }
    }
    func inchToCm(inchValue: Double)
}
