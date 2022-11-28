//
//  신고 결과 받기.swift
//  nahee
//
//  Created by 김나희 on 11/22/22.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var counter = [String:[String]]()
    var res = [String:Int]()
    var ans = Array(repeating: 0, count: id_list.count)

    report.forEach { users in
        let res = users.components(separatedBy: " ")
        counter[res[0], default: []].append(res[1])
    }
    
    counter.values.forEach { reported in
        Set(reported).forEach { user in
            res[user, default: 0] += 1
        }
    }
    
    let blockedUser = res.filter { $0.value >= k }.keys
    counter.forEach { reporter, reported in
        ans[id_list.firstIndex(of: reporter)!] = Set(reported).filter { blockedUser.contains($0) }.count
    }
    
    return ans
}
