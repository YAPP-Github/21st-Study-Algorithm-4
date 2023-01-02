//
//  점프와 순간이동.swift
//  nahee
//
//  Created by 김나희 on 12/12/22.
//

import Foundation

func solution(_ n:Int) -> Int {
    return dfs(n)
}

func dfs(_ n: Int) -> Int {
    if n == 1 {
        return 1
    } else {
        if n % 2 == 0 {
            return dfs(n/2)
        } else {
            return dfs(n-1) + 1
        }
    }
}
