import Foundation

// 투포인터 사용
func solution(_ gems:[String]) -> [Int] {
    let kind = Set(gems).count // 보석 종류
    var dict: [String: Int] = [gems[0]: 1]
    var answer = [0, gems.count-1]
    var start = 0
    var end = 0
    
    while start < gems.count && end < gems.count {
        // 모든 종류의 보석을 다 모았다면
        if dict.count == kind {
            // 현재 답보다 길이가 더 짧은 경우 답 갱신
            if end - start < answer[1] - answer[0] {
                answer = [start, end]
            }
            // start 앞으로 이동 (start의 보석은 뺌)
            if dict[gems[start]] == 1 {
                dict.removeValue(forKey: gems[start])
            }
            else {
                dict[gems[start]]! -= 1
            }
            start += 1
        }
        
        // 보석 종류를 다 모으지 못했다면
        else {
            // end 앞으로 이동 (해당 보석 +1)
            end += 1
            if end == gems.count {
                break
            }
            if dict[gems[end]] != nil {
                dict[gems[end]]! += 1
            }
            else {
                dict[gems[end]] = 1
            }
        }
    }
    return [answer[0]+1, answer[1]+1]
}
