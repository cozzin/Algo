//
//  A1904.swift
//  Algo
//
//  Created by seongho.hong on 2021/03/26.
//
//  타일
//  https://www.acmicpc.net/problem/1904
//
//  유형: 동적 프로그래밍

import Foundation

final class A1904 {
    func solution(n: Int) -> Int {
        var dp = Array(repeating: 0, count: 1000001)
        dp[1] = 1
        dp[2] = 2
        
        // DP에서 핵심은 반복되는 패턴을 찾아서 점화식을 만드는 것
        (3...n).forEach { i in
            dp[i] = dp[i - 2] + dp[i - 1]
        }
        
        return dp[n]
    }
}
