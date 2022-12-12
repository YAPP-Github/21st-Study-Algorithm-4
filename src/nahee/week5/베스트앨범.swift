//
//  베스트앨범.swift
//  nahee
//
//  Created by 김나희 on 12/11/22.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    let categories = Set(genres)
    var arr = [Int]()
    var res = [String: Int]()
    var tmp = [(String, Int, Int)]()
    categories.map { category in
        res.updateValue(0, forKey: category)
        var sum = 0
        for i in 0..<genres.count {
            if genres[i] == category {
                sum += plays[i]
                tmp.append((category,plays[i], i))
            }
        }
        res[category] = sum
        tmp = tmp.sorted { $0.1 > $1.1}
    }
    
    let sortedDic = res.sorted { $0.value > $1.value }
    
    sortedDic.map { data in
        let category = data.key
        var cnt = 0
        for i in 0..<tmp.count {
            if cnt >= 2 { break }
            if category == tmp[i].0 {
                arr.append(tmp[i].2)
                cnt += 1
            }
        }
    }
    return arr
}
