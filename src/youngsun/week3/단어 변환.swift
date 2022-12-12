import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    func BFS() -> Int {
        var queue: [String] = [begin]
        var visited = Array(repeating: false, count: words.count)
        var depth = 0
        
        while !queue.isEmpty {
            let node = queue.removeLast()
            if node == target {
                return depth
            }
            
            for i in 0..<words.count {
                var diffCount = 0 // 단어마다 서로 다른 알파벳 개수
                for (a, b) in zip(node, words[i]) {
                    if a != b {
                        diffCount += 1
                    }
                }
                
                if diffCount == 1 && !visited[i] { // 알파벳 한글자만 다르고 방문하지 않았던 단어라면
                    visited[i] = true
                    queue.append(words[i])
                }
            }
            
            depth += 1
        }
        return 0 // target으로 바꿀 수 없는 경우 0 리턴
    }
    
    return BFS()
}
