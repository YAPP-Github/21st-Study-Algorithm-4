//
//  네트워크.swift
//  nahee
//
//  Created by 김나희 on 11/27/22.
//

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var check = Array(repeating: false, count: n)
    var res = 0
    
    for i in 0..<n {
        if !check[i] {
            res += 1
            dfs(i, computers, &check, n)
        }
    }
    
    return res
}

func dfs(_ num: Int, _ computers:[[Int]], _ check: inout [Bool], _ size: Int) {
    check[num] = true
    
    for i in 0..<size {
        if !check[i] && computers[num][i] == 1 {
            dfs(i, computers, &check, size)
        }
    }
}
