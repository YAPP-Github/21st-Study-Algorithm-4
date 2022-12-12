import Foundation

// 약수구할 때 시간초과 해결이 관건
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var answer = 0
    for i in 1...number {
        // let count = (1...i).filter {i%$0 == 0}.count -> 시간초과
        var count = 0
        for j in 1...Int(sqrt(Double(i))) {
            if i % j == 0 {
                count += 1
                if j*j != i {
                    count += 1
                }
            }
        }
        
        if count > limit {
            answer += power
        }
        else {
            answer += count
        }
    }
    return answer
}
