//
//  보석 쇼핑.swift
//  AlgorithmBySwift
//
//  Created by 김나희 on 1/2/23.
//

import Foundation

func solution(_ gems:[String]) -> [Int] {

    var shortest = gems.count + 1
    let gemtypes = Set(gems)
    let typeCount = gemtypes.count
    var left = 0
    var right = 0
    var result = [Int]()
    var contained = [String:Int]()
    while left < gems.count && right < gems.count {
        if contained[gems[right]] == nil {
            contained[gems[right]] = 1
        } else {
            contained[gems[right]]! += 1
        }
        right += 1
        if contained.count == typeCount {
            while left < right {
                if contained[gems[left]] != nil,
                   contained[gems[left]]! > 1 {
                    contained[gems[left]]! -= 1
                    left += 1
                } else if shortest > right - left {
                    shortest = right - left
                    result = [left+1,right]
                    break
                } else {
                    break
                }
            }
        }
    }
    return result
}
