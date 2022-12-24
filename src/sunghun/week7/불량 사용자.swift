import Foundation

func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
    
    var matchUpWithIndex = [[Int]](repeating: [Int](), count: banned_id.count)
    
    var matchUpCases = Set<[Int]>()
    
    func matching(_ user_id: String, _ banned_id: String) -> Bool {
        if user_id.count != banned_id.count {
            return false
        }
        
        let tempUser = user_id.map{$0}
        let tempBanned = banned_id.map{$0}
        
        for idx in 0..<tempUser.count {
            if tempUser[idx] != tempBanned[idx] && tempBanned[idx] != "*" {
                return false
            }
        }
        
        return true
    }
    
    func combination(_ curBannedIdx: Int, selected: [Int]) {
        if curBannedIdx == banned_id.count {
            matchUpCases.insert(selected.sorted(by: <))
            
        } else {
            var temp = selected
            
            for userIdx in matchUpWithIndex[curBannedIdx] {
                if temp.contains(userIdx) == false {
                    temp.append(userIdx)
                    combination(curBannedIdx + 1, selected: temp)
                    temp.removeLast()
                }
            }
        }
    }
    
    for bannedIndex in 0..<banned_id.count {
        for userIndex in 0..<user_id.count {
            if matching(user_id[userIndex], banned_id[bannedIndex]) {
                matchUpWithIndex[bannedIndex].append(userIndex)
            }
        }
    }
    
    combination(0, selected: [])
    
    print("matchUpWithIndex \(matchUpWithIndex)")
    print("matchUpCases \(matchUpCases)")
    
    return matchUpCases.count
}

print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"]))
