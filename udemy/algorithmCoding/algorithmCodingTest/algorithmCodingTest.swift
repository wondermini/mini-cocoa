//
//  algorithmCodingTest.swift
//  algorithmCodingTest
//
//  Created by JUNGMIN KIM on 2022/05/20.
//

import XCTest

class algorithmCodingTest: XCTestCase {

    func testRomanToInteger() throws {
        XCTAssertEqual(romanToInt("III"), 3)
        XCTAssertEqual(romanToInt("LVIII"), 58)
        XCTAssertEqual(romanToInt("MCMXCIV"), 1994)
    }

}
