//
//  네트워크.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/22.
//

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited: [Bool] = Array(repeating: false, count: n)
    var result = 0
    
    func dfs(node: Int) {
        visited[node] = true
        for index in computers[node].indices {
            if computers[node][index] == 1 && visited[index] == false {
                dfs(node: index)
            }
        }
    }
    
    for index in computers.indices {
        if visited[index] == false {
            dfs(node: index)
            result += 1
        }
    }
    
    return result
}
