//
//  이진 변환 반복하기.swift
//  AlgorithmBySwift
//
//  Created by 김나희 on 1/2/23.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var cnt = 0
    var zero = 0
    
    while s != "1" {
        cnt += 1
        let c = s.filter { $0 == "1"}.count
        zero += s.count-c
        s = String(c, radix:2)
    }
    
    return [cnt, zero]
}
