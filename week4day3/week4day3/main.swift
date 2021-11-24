//
//  main.swift
//  week4day3
//
//  Created by JUNGMIN KIM on 2021/11/24.
//

import Foundation


print(searchFiles(at: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa"))

print(isExist(filename: "week1day5", at: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa"))
print(isExist(filename: "week1day10", at: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa"))

print(sortFileByABC(at: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa"))

print(multipleFiles(with: ["week4day10","week1day4"], at: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa"))
print(searchByExtension(exname: ".md", at: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa"))

print(Process().currentDirectoryPath)


var csv = Csv()
csv.readCsv(path: "/Users/wondermini/Google Drive/project/cocoa/mini-cocoa/week4day3/week4day3/data.csv")
csv.printData()
csv.add(name: "정민", email: "minimini@gmail.com", language: "swift", grade: 0)
csv.printData()

