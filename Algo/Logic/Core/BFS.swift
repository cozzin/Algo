//
//  BFS.swift
//  Algo
//
//  Created by seongho.hong on 2021/03/25.
//

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
