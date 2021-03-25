//
//  A2798.swift
//  CodingTest
//
//  Created by seongho.hong on 2021/03/23.
//
//  블랙잭
//  https://www.acmicpc.net/problem/2798
//  경우의 수

import Foundation

final class A2798 {
    static func solution(n: Int, m: Int, data: [Int]) -> Int {
        var result = 0
        let length = data.count
        
        (0..<length).forEach { i in
            ((i + 1)..<(length)).forEach { j in
                ((j + 1)..<(length)).forEach { k in
                    let sum = data[i] + data[j] + data[k]
                    if sum <= m {
                        result = max(result, sum)
                    }
                }
            }
        }
        
        return result
    }
}
