import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    
    // 조합 계산
    func combination(i: Int, select: [Int]) {
        if select.count == banned_id.count {
            answer.update(with: select.sorted())
            return
        }
        var select = select
        let arr = result[i]
        // 배열의 첫번째 요소부터 조합을 선택
        for n in arr {
            // 이미 선택한 유저면 넘김
            if select.contains(n) {
                continue
            }
            select.append(n)
            combination(i: i+1, select: select)
            select.removeLast()
        }
    }

    var answer = Set<[Int]>()
    var result: [[Int]] = Array(repeating: [], count: banned_id.count)
    
    for (bannedIndex, banned) in banned_id.enumerated() {
        for (userIndex, user) in user_id.enumerated() {
            if isBanned(user: user, banned: banned) {
                result[bannedIndex].append(userIndex)
            }
        }
    }

    combination(i: 0, select: [])
    return answer.count
}

// 불량 사용자인지 체크
func isBanned(user: String, banned: String) -> Bool {
    if user.count != banned.count {
        return false
    }
    let user = Array(user)
    let banned = Array(banned)
    for i in 0..<user.count {
        if banned[i] != "*" && user[i] != banned[i] {
            return false
        }
    }
    return true
}

solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"])
