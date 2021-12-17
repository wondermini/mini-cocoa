//
//  main.swift
//  211217
//
//  Created by JUNGMIN KIM on 2021/12/17.
//

import Foundation




enum School {
    case elementary, middle, high
}

let yourSchool = School.high
print("yourSchool: \(yourSchool)")

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second.rawValue
print("yourGrade: \(yourGrade)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case.elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "미니중학교")
print("yourMiddleSchoolName: \(yourMiddleSchoolName)")

print("yourMiddleSchoolName: \(yourMiddleSchoolName.getName())")
