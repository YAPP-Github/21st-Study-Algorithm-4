//
//  행렬의 곱셈.swift
//  AlgorithmBySwift
//
//  Created by 김나희 on 1/2/23.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    // arr1의 행 x arr2의 열
    var res = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {
            var tmp = 0
            for k in 0..<arr1[0].count {
                tmp += (arr1[i][k]*arr2[k][j])
            }
            res[i][j] = tmp
        }
    }
    return res
}
