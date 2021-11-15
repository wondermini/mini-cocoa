//
//  main.swift
//  Week3day1
//
//  Created by JUNGMIN KIM on 2021/11/15.
//

import Foundation

var myMatrix = Matrix(a: 1, b: 2, c: 3, d: 4)

var myOtherMatrix = Matrix(a: 5, b: 6, c: 7, d: 8)

myMatrix.sum(with: myOtherMatrix).printMatrix()
myMatrix.product(with: myOtherMatrix).printMatrix()

var myBinaryNumber = BinaryNumber(with: 5)
myBinaryNumber.printValues()
print(myBinaryNumber.find(by: 3))
