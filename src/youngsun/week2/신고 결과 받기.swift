import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    let report: Set = Set(report) // 중복신고 제거
    var reportedCount = [String: Int]() // 신고당한 횟수
    var reportList = [String: [String]]() // 신고한 리스트
    
    for id in id_list {
        reportedCount[id] = 0
        reportList[id] = []
    }
    
    for report in report {
        let split = report.split(separator: " ").map {String($0)}
        let reportId = split[0]; let reportedId = split[1]
        
        reportedCount[reportedId]! += 1
        reportList[reportId]?.append(reportedId)
    }
    
    // 신고한 아이디들중 정지당한 개수
    var answer = [Int]()
    for id in id_list {
        var count = 0
        for reported in reportList[id]! {
            if reportedCount[reported]! >= k {
                count += 1
            }
        }
        answer.append(count)
    }
    return answer
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
