//
//  예상 대진표.swift
//  nahee
//
//  Created by 김나희 on 12/11/22.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var round = 0

    var a = a
    var b = b
    
    while a != b {
        a = Int(ceil(Double(a) / 2.0))
        b = Int(ceil(Double(b) / 2.0))
        round += 1
    }
    
    return round
}
