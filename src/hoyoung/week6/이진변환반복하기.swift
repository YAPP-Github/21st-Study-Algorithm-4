//
//  이진변환반복하기.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/19.
//

import Foundation

func solution(_ s:String) -> [Int] {
    
    var removeCount = 0
    var cycle = 0
    var string = s
    
    while string.count != 1 {
        let convertString = string.filter { $0 != "0" }
        removeCount += string.count - convertString.count
        
        string = String(convertString.count, radix: 2, uppercase: false)
        cycle += 1
    }
    
    return [cycle, removeCount]
}
