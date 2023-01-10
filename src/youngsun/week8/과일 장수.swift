import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let score = score.sorted(by: >)
    var index = 0
    var answer = 0
   
    while true {
        index += m-1
        if index < score.count {
            answer += score[index]*m
            index += 1
        }
        else {
            break
        }
    }
    return answer
}

