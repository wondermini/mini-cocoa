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

        } else if tmpValue.contains("") {
                    
        }
     
        return ""
    }
    func cmToInch(value: Double) -> Double {
        return value/2.54
    }
//    func inchToCm{
//
//    }
//    func cmToM{
//
//    }
//    func mToCm{
//
//    }
    
}
