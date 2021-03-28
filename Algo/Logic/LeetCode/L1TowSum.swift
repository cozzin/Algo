//
//  L1TowSum.swift
//  Algo
//
//  Created by seongho.hong on 2021/03/29.
//  https://leetcode.com/problems/two-sum/

import Foundation

extension LeetCode {
    enum L1 { }
}

extension LeetCode.L1 {
    /*
     주어진 배열 안에서 2개를 더해서 target을 만들어내는 index를 구하는 문제
     
     주어진 배열의 길이가 최대 1000 이라서
     모든 경우의 수를 계산하는것도 가능하다고 판단함
     
     시간복잡도는 O(N^2)
     */
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            let length = nums.count
            
            for i in 0..<length {
                for j in i + 1..<length {
                    if nums[i] + nums[j] == target {
                        return [i, j]
                    }
                }
            }
            
            return []
        }
    }
}
