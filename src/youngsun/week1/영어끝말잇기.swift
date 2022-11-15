import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    for i in 1..<words.count {
        let currentWord = words[i]
        let beforeWord = words[i-1]
        // 끝말잇기가 이어지지 않거나 앞에 나온 단어면
        if currentWord.first! != beforeWord.last! ||
            words[0..<i].contains(currentWord) {
            return [i % n + 1, Int(ceil(Double(i+1) / Double(n)))]
        }
    }
    return [0, 0]
}
