import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var duplicateCheck: [String: Set<String>] = [:] // key: 신고 당한 사람, value: 신고 한 사람 (중복제거) -> 중복체크
    var reportBoard:[String:Int] = [:]
    var result:[Int] = Array(repeating: 0, count: id_list.count)
    
    for (i,reporting) in id_list.enumerated() {
        reportBoard[reporting] = i
    }
    
    report.forEach { value in
        let reporting = value.split(separator: " ").map{String($0)}[0] // 신고 한 사람
        let reported = value.split(separator: " ").map{String($0)}[1] // 신고 당한 사람
        if duplicateCheck[reported] == nil {
            duplicateCheck[reported] = [reporting]
        } else {
            duplicateCheck[reported]!.insert(reporting)
        }
    }
    
    for report in duplicateCheck {
        if report.value.count >= k {
            for reporting in report.value {
                result[reportBoard[reporting]!] += 1
            }
        }
    }
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))
