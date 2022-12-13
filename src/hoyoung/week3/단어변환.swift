//
//  단어변환.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/28.
//

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    func convert(str: String) -> [String] {
        
        var queue: [String] = []
        
        for a in words {
            var sameCount = 0
            for i in str.indices {
                if a[i] == str[i] {
                    sameCount += 1
                }
            }
            
            if sameCount == a.count - 1 {
                queue.append(a)
            }
        }
        
        return queue
    }

    var visitedQueue: [String] = []
    var needVisitedQueue: [String] = []
    
    var graph: [String: [String]] = [:]
    
    guard words.contains(target) else { return 0 }
    
    // 근접 그래프 만들기
    graph[begin] = convert(str: begin)
    
    for word in words {
        graph[word] = convert(str: word)
    }
    
    // 초기값 넣어주기
    needVisitedQueue.append(begin)
    
    while !needVisitedQueue.isEmpty {
        let node = needVisitedQueue.removeFirst()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitedQueue = graph[node] ?? []
        if needVisitedQueue.contains(target) { break }
    }
    
    return visitedQueue.count
}
