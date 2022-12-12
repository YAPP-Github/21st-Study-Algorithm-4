import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    for oper in operations {
        let operation = oper.split(separator: " ")
        // 숫자 삽입
        if operation[0] == "I" {
            queue.append(Int(operation[1])!)
        }
        // 숫자 삭제
        else {
            if !queue.isEmpty {
                operation[1] == "-1" ? queue.sort() : queue.sort(by: >)
                queue.removeFirst()
            }
        }
    }
    return queue.isEmpty ? [0, 0] : [queue.max()!, queue.min()!]
}
