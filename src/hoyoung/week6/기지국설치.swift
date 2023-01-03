//
//  기지국설치.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/20.
//

import Foundation

// 개선 필요..... 실패코드 임당..

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    var array: [Int] = []
    var a: [Int] = []
    
    for station in stations {
        let a = station+w > n ? n : station+w
        for i in station-w...a {
            array.append(i)
        }
    }
    
    var count = 0
    
    for i in (1..<n) {
        if array.contains(i) {
            a.append(count)
            count = 0
        } else {
            count += 1
        }
    }
    a.append(count)
    
    a.filter { $0 != 0 }.forEach {
        answer += $0 / (w*2+1)
        answer += $0 % (w*2+1) == 0 ? 0 : 1
    }

    return answer
}
