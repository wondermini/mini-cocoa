//
//  unit converter.swift
//  220117
//
//  Created by JUNGMIN KIM on 2022/01/18.
//

import Foundation

struct UnitConverter {
    func mTocm(value: String) {
        var tmpValue = value
        if tmpValue.contains("m") {
            tmpValue.removeLast()
            let cmValue = Int(tmpValue)! * 100
            print("\(cmValue) cm")
        }
    }
}
