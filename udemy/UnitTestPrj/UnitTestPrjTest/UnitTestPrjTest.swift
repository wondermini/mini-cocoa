//
//  UnitTestPrjTest.swift
//  UnitTestPrjTest
//
//  Created by JUNGMIN KIM on 2022/05/19.
//

import XCTest

class UnitTestPrjTest: XCTestCase {

    func testExample() throws {
        
        let add = Add()
        XCTAssertEqual(10, add.add(a: 5, b: 5))
        
    }


}
