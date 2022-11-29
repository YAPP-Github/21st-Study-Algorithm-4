//
//  신고결과받기.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/22.
//

import Foundation

// 속도 초과 실패;;

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var reportIdSet: [(String, String)] = []
    var reportList: [String] = []
    var result: [Int] = []
    
    for report in Set(report) {
        let reportList = report.split(separator: " ")
        let reporter = String(reportList.first!)
        let reportId = String(reportList.last!)
        
        reportIdSet.append((reporter, reportId))
    }

    for id in id_list {
        let reportCount = reportIdSet.filter { $0.1 == id }.count
        if reportCount >= k {
            reportList.append(id)
        }
    }
    
    for id in id_list {
        result.append(reportIdSet.filter { $0.0 == id && reportList.contains($0.1) }.count)
    }
    return result
}
