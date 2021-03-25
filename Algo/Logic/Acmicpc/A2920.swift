//
//  A2920.swift
//  CodingTest
//
//  Created by seongho.hong on 2021/03/22.
//
//  음계
//  https://www.acmicpc.net/problem/2920

import Foundation

final class A2920 {
    func check(inputs: [Int]) -> String {
        var ascending = true
        var descending = true
        
        (0...6).forEach {
            if inputs[$0] > inputs[$0 + 1] {
                ascending = false
            } else if inputs[$0] < inputs[$0 + 1] {
                descending = false
            }
        }
        
        if ascending {
            return "ascending"
        } else if descending {
            return "descending"
        } else {
            return "mixed"
        }
    }
}
