//
//  멀리 뛰기.swift
//  nahee
//
//  Created by 김나희 on 11/29/22.
//

import Foundation

func solution(_ n:Int) -> Int {
    var dp = [0, 1, 2]
    
    if n < 3 {
        return dp[n]
    } else {
        for i in 3...n {
            dp.append(0)
            dp[i] = (dp[i-1] + dp[i-2]) % 1234567
        }
    }
    return dp[n]
}
