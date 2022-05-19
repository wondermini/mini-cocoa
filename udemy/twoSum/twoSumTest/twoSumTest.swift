//
//  twoSumTest.swift
//  twoSumTest
//
//  Created by JUNGMIN KIM on 2022/05/19.
//

import XCTest

class twoSumTest: XCTestCase {

    func testTwoSum() throws {
        XCTAssertEqual(twoSum([1,2,3,9],3), [0,1])
    }
    
    func testFizzBuzz() throws {
        XCTAssertEqual(fizzBuzz(3), ["1","2","Fizz"])
    }
    
    func testIsPalindrome() throws {
        XCTAssertEqual (isPalindrome(121),(true))
    }

    func testFindSum() throws {
        XCTAssertEqual (findSum(nums: [1,2,3,9],sum: 8),false)
        XCTAssertEqual (findSum(nums: [1,2,4,4],sum: 8),true)
    }
}
