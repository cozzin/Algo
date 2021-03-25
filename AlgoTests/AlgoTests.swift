//
//  AlgoSpec.swift
//  AlgoTests
//
//  Created by seongho.hong on 2021/03/24.
//

import XCTest
@testable import Algo

final class AlgoTests: XCTestCase {
    
    func test1543() {
        let solution = A1543().solution(N: "ababababa", M: "aba")
        XCTAssertEqual(solution, 2)
    }
    
    func testBFS() {
        let graph: [String: [String]] = [
            "A": ["B", "C"],
            "B": ["A", "D"],
            "C": ["A", "G", "H", "I"],
            "D": ["B", "E", "F"],
            "E": ["D"],
            "F": ["D"],
            "G": ["C"],
            "H": ["C"],
            "I": ["C", "J"],
            "J": ["I"]
        ]
        
        let result = BFS().execute(graph: graph, startNode: "A")
        XCTAssertEqual(result, ["A", "B", "C", "D", "G", "H", "I", "E", "F", "J"])
    }
    
}
