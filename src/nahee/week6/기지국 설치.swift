//
//  기지국 설치.swift
//  AlgorithmBySwift
//
//  Created by 김나희 on 1/2/23.
//

import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    var location = 1
    var stationIndex = 0
    
    while location <= n {
        if stationIndex < stations.count && location >= stations[stationIndex] - w {
            location = stations[stationIndex] + w + 1
            stationIndex += 1
        } else {
            location += w * 2 + 1
            answer += 1
        }
    }
    
    return answer
}
