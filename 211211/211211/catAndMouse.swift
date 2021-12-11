//
//  catAndMouse.swift
//  211211
//
//  Created by JUNGMIN KIM on 2021/12/11.
//

import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    var distanceCatA: Int
    var distanceCatB: Int

    if x > z {
        distanceCatA = x-z
    } else {
        distanceCatA = z-x
    }

    if y > z {
        distanceCatB = y-z
    } else {
        distanceCatB = z-y
    }

    if distanceCatA > distanceCatB {
        return "Cat B"
    } else if distanceCatA < distanceCatB {
        return "Cat A"
    } else {
        return "Mouse C"
    }
}
