import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    let aTeam = a.sorted(by: >)
    let bTeam = b.sorted(by: >)
    
    var index = 0
    var answer = 0
    for i in 0..<aTeam.count {
        if aTeam[i] < bTeam[index] { // b팀이 이기는 순간 인덱스 +1
            index += 1
            answer += 1
        }
    }
    return answer
}
