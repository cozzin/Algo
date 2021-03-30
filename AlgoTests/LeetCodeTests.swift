//
//  LeetCodeTests.swift
//  AlgoTests
//
//  Created by seongho.hong on 2021/03/29.
//

import XCTest
@testable import Algo

class LeetCodeTests: XCTestCase {

    func testTwoSum() {
        XCTAssertEqual(LeetCode.L1.Solution().twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(LeetCode.L1.Solution().twoSum([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(LeetCode.L1.Solution().twoSum([3, 3], 6), [0, 1])
        
        XCTAssertEqual(LeetCode.L1.Solution2().twoSum([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(LeetCode.L1.Solution2().twoSum([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(LeetCode.L1.Solution2().twoSum([3, 3], 6), [0, 1, 2])
    }

}
