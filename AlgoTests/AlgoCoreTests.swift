//
//  AlgoCoreTests.swift
//  AlgoTests
//
//  Created by seongho.hong on 2021/03/25.
//

import XCTest
@testable import Algo

final class AlgoCoreTests: XCTestCase {
    
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
    
    func testDFS() {
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
        
        let result = DFS().execute(graph: graph, startNode: "A")
        XCTAssertEqual(result, ["A", "C", "I", "J", "H", "G", "B", "D", "F", "E"])
    }
    
}
