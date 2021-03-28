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
     
     시간복잡도: O(N^2)
     공간복잡도: O(1)
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
    
    /*
     문제 풀이 보고 다시 코딩해봄
     시간복잡도를 더 제한적으로 사용하는 경우 시도할 수 있는 풀이법
     
     시간복잡도: O(N)
     공간복잡도: O(N)
     */
    class Solution2 {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var dict: [Int: Int] = [:]
            
            for (i, num) in nums.enumerated() {
                // target - num = 해당값 찾기
                // 문제가 요구하는 num + 해당값 = target이 됨
                if let index = dict[target - num] {
                    return [index, i]
                }
                
                // 배열을 전진하면서 탐색하기 때문에
                // 나중에 검색될 수 있게 딕셔너리에 넣어줘야 함
                dict[num] = i
            }
            
            return []
        }
    }
}
