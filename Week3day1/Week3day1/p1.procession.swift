//
//  p1.swift
//  Week3day1
//
//  Created by JUNGMIN KIM on 2021/11/15.
//

import Foundation

class Matrix {
    var a: Double
    var b: Double
    var c: Double
    var d: Double
    init() {
        self.a = 0
        self.b = 0
        self.c = 0
        self.d = 0
    }

    init(a: Double, b: Double, c: Double, d: Double) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
    }

    func sum(with other: Matrix) -> Matrix {
        return Matrix(a: self.a + other.a, b: self.b + other.b, c: self.c + other.c, d: self.d + other.d)
    }

    func product(with other: Matrix) -> Matrix {
        return Matrix(a: (self.a * other.a) + (self.b * other.c),
                      b: (self.a * other.b) + (self.b * other.d),
                      c: (self.c * other.a) + (self.d * other.c),
                      d: (self.c * other.b) + (self.d * other.d))
    }
    
    func printMatrix() {
        print("a:\(self.a),b:\(self.b),c:\(self.c),d:\(self.d)")
    }
}

