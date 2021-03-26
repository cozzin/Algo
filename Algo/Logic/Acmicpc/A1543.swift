//
//  A1543.swift
//  Algo
//
//  Created by seongho.hong on 2021/03/24.
//  https://www.acmicpc.net/problem/1543

import Foundation

final class A1543 {
    
    func solution(N: String, M: String) -> Int {
        let N = N.map { "\($0)" }
        let M = M.map { "\($0)" }
        var count: Int = 0
        var i: Int = 0
        
        while i < (N.count - M.count) {
            for j in (0..<M.count) {
                if N[i + j] != M[j] {
                    i += 1
                    break
                }
                
                // 마지막 원소
                if j == M.count - 1 {
                    i = i + j + 1
                    count += 1
                }
            }
        }
        
        return count
    }
    
}
