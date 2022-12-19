import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var zeroCount = 0
    var binaryCount = 0
    while true {
        if s == "1" {
            break
        }
        let oneCount = s.filter {$0 == "1"}.count
        zeroCount += s.filter {$0 == "0"}.count
        s = s.filter {$0 == "1"}
        
        binaryCount += 1
        s = String(oneCount, radix: 2)
        print(Int(s))
    }
    return [binaryCount, zeroCount]
}
