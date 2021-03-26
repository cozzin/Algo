//
//  AcmicpcTests.swift
//  AlgoTests
//
//  Created by seongho.hong on 2021/03/25.
//

import XCTest
@testable import Algo

final class AcmicpcTests: XCTestCase {
    
    func test1543() {
        let solution = A1543().solution(N: "ababababa", M: "aba")
        XCTAssertEqual(solution, 2)
    }
    
    func test1904() {
        let solution = A1904().solution(n: 4)
        XCTAssertEqual(solution, 5)
   }
    
}
