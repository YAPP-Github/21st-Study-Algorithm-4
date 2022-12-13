import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var answer = 0
    for babble in babbling {
        var result = ""
        var lastWord = ""
        for i in babble.map {String($0)} {
            result += i // 한글자씩 넣어 비교
            if words.contains(result) && lastWord != result {
                lastWord = result
                result = ""
            }
        }
        if result.isEmpty {
            answer += 1
        }
    }
    return answer
}
