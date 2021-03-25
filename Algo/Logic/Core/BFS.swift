//
//  BFS.swift
//  Algo
//
//  Created by seongho.hong on 2021/03/25.
//
//  너비 우선 탐색
//  - 구현: 2개의 Queue를 사용하는 방식
//    - 1. 방문한 Node
//    - 2. 방문이 필요한 Node

import Foundation

final class BFS {
    func execute(graph: [String: [String]], startNode: String) -> [String] {
        var visited: [String] = []
        var needVisit: [String] = []
        
        needVisit.append(startNode)
        
        while needVisit.isEmpty == false {
            let node = needVisit.removeFirst()
            
            if visited.contains(node) == false {
                visited.append(node)
                
                if let nodes = graph[node] {
                    needVisit.append(contentsOf: nodes)
                }
            }
        }
        
        return visited
    }
}
