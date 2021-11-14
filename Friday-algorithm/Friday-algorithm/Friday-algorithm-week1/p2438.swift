//
//  p2438.swift
//  Friday-algorithm
//
//  Created by JUNGMIN KIM on 2021/11/05.
//

import Foundation

func p2438(){
    let max=(readLine()!)
    let n=Int(max)!
    
    for i in 1...n{
        for _ in 1...i{
            print("*", terminator: "")
        }
        print()
    }
}
