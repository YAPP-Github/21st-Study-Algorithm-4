//
//  과일 장수.swift
//  AlgorithmBySwift
//
//  Created by 김나희 on 1/2/23.
//

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let scores = score.sorted(by: >)
    let cnt = scores.count / m
    var res = 0
    
    for i in 0..<cnt {
        res += scores[m*i..<m*i+m].min()!
    }
    
    return res*m
}
