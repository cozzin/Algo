//
//  A2750.swift
//  CodingTest
//
//  Created by seongho.hong on 2021/03/23.
//

import Foundation

final class A2750 {
    static func solution(_ inputs: [Int]) -> [Int] {
        var result: [Int] = inputs
        
        (0..<inputs.count).forEach { i in
            var minIndex = i
            
            ((i + 1)..<inputs.count).forEach { j in
                if result[minIndex] > result[j] {
                    minIndex = j;
                }
            }
            
            let currentMin = result[i]
            let min = result[minIndex]
            result[i] = min
            result[minIndex] = currentMin
        }
        
        return result
    }
    
    static func solution2(_ inputs: [Int]) -> [Int] {
        inputs.sorted()
    }
}
