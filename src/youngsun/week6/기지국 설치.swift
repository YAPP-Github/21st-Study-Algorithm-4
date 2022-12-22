import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var startIndex = 1
    var answer = 0
    
    // 설치해야 할 기지국 갯수 = ceil(시작인덱스 ~ 기지국 범위 전까지 거리) / (기지국 한개 설치 시 거리)
    for station in stations {
        var endIndex = station - w - 1
        let distance = endIndex - startIndex + 1
        answer += Int(ceil(Double(distance)/Double(2*w+1)))
        startIndex = station + w + 1
    }
    
    // 마지막 기지국 뒤에 닿지 않는 구역
    if startIndex <= n {
        let endIndex = n
        let dinstance = endIndex - startIndex + 1
        answer += Int(ceil(Double(dinstance)/Double(2*w+1)))
    }
    
    return answer
}
