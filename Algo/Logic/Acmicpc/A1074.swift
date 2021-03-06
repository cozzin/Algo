//
//  A1074.swift
//  CodingTest
//
//  Created by seongho.hong on 2021/03/23.
//
//  Z
//  https://www.acmicpc.net/problem/1074

import Foundation

final class A1074 {
    private let targetX: Int
    private let targetY: Int
    private var result: Int = 0
    private var count: Int = 0

    init(targetX: Int, targetY: Int) {
        self.targetX = targetX
        self.targetY = targetY
    }
    
    func solution(n: Int) -> Int {
        count = 0
        result = 0
        solve(n: Int(pow(Double(2), Double(n))), x: 0, y: 0)
        return result
    }
    
    private func solve(n: Int, x: Int, y: Int) {
        // 재귀적으로 문제를 풀어야 함
        // 반복되는 패턴이 있는지 확인하고
        // 큰 범위 -> 작은 범위로 같은 함수를 재귀적으로 호출하도록 만들기
        if n == 2 {
            if x == targetX && y == targetY {
                result = count
                return
            }
            count += 1
            
            if x == targetX && y + 1 == targetY {
                result = count
                return
            }
            count += 1
            
            if x + 1 == targetX && y == targetY {
                result = count
                return
            }
            count += 1
            
            if x + 1 == targetX && y + 1 == targetY {
                result = count
                return
            }
            count += 1
            return
        }
        
        solve(n: n / 2, x: x, y: y)
        solve(n: n / 2, x: x, y: y + n / 2)
        solve(n: n / 2, x: x + n / 2, y: y)
        solve(n: n / 2, x: x + n / 2, y: y + n / 2)
    }
}
