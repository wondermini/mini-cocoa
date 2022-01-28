//
//  makeGugu.swift
//  220128
//
//  Created by JUNGMIN KIM on 2022/01/28.
//

import Foundation

func makeGugu(maxDan: Int) {
    for i in 1...maxDan {
        for j in 1...9 {
            print("\(i)X\(j)=\(i * j)")
        }
    }
}
