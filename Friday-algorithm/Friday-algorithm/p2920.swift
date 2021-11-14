//
//  p2920.swift
//  Friday-algorithm
//
//  Created by JUNGMIN KIM on 2021/11/05.
//

import Foundation

func p2920(){
    
    let input=(readLine()!)

    switch input{
       
    case String(input.sorted()):
        print("ascending")
    case String(input.sorted().reversed()):
        print("descending")
    default:
        print("mixed")
    }
}

