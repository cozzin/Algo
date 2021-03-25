//
//  DFS.swift
//  Algo
//
//  Created by seongho.hong on 2021/03/25.
//

import Foundation

///  깊이 우선 탐색
///  - 구현: 1개의 Queue, 1개의 Stack을 사용하는 방식
///    - 1. 방문한 Node
///    - 2. 방문이 필요한 Node
///
///  시간 복잡도: O(V+E) 노드개수 + 간선개수
final class DFS {
    func execute(graph: [String: [String]], startNode: String) -> [String] {
        var visitedQueue: [String] = []
        // DFS와의 차이는 needVisit에 stack을 썼다는 점
        var needVisitStack: [String] = []
        
        needVisitStack.append(startNode)
        
        while let node = needVisitStack.popLast() {
            if visitedQueue.contains(node) == false {
                visitedQueue.append(node)
                
                if let nodes = graph[node] {
                    needVisitStack.append(contentsOf: nodes)
                }
            }
        }
        
        return visitedQueue
    }
}
