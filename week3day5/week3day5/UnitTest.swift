//
//  unit_test.swift
//  unit_test
//
//  Created by JUNGMIN KIM on 2021/11/22.
//

import XCTest

class unit_test: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let result = diagonalDifference(arr: [[11, 2, 4],
                                          [4, 5, 6],
                                          [10, 8, -12]])
        XCTAssertTrue(result == 15)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
