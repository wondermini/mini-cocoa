//
//  main.swift
//  week3day2
//
//  Created by JUNGMIN KIM on 2021/11/16.
//

import Foundation

print("Hello, World!")

printXY(max: 5)

printLeftTree(lines: 5)
print()

printRightTree(lines: 4)

printCenterTree(lines: 5)

printNumbers(lines: 5)

printSquare(columns: 5)

printReverse(lines: 4)

var myBinaryNumber = BinaryNumber(with: 5)
myBinaryNumber.printValues()
print(myBinaryNumber.find(by: 3))

var sort = BubbleSort(arr: [10,3,4,5])
print(sort.sorted(isAscending: true))
print(sort.sorted(isAscending: false))

