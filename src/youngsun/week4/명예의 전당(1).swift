import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var honors = [Int]()
    var answer = [Int]()
    for s in score {
        honors.append(s)
        honors.sort(by: >) // 내림차순 정렬
        if honors.count > k {
            honors.popLast()
        }
        answer.append(honors.last!)
    }
    return answer
}
