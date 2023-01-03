import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var playDict = [String: (Int, [Int])]() // 장르: 총재생수, [재생곡]
    var musicDict = [String: [Int]]() // 장르: [고유번호]
    for i in 0..<genres.count {
        if playDict[genres[i]] != nil {
            playDict[genres[i]]?.1.append(plays[i])
            playDict[genres[i]]?.0 += plays[i]
        }
        else {
            playDict[genres[i]] = (plays[i], [plays[i]])
        }
        
        let key = genres[i] + String(plays[i])
        if musicDict[key] != nil {
            musicDict[key]?.append(i)
        }
        else {
            musicDict[key] = [i]
        }
    }
    var bestMusics = [Int]()
    for (k, value) in playDict.sorted(by: {$0.value.0 > $1.value.0}) {
        var count = 0
        
        for play in value.1.sorted(by: >) {
            let key = k + String(play)
            for music in musicDict[key]!.sorted() {
                guard count < 2 else {
                    break
                }
                bestMusics.append(music)
                count += 1
            }
        }
    }
    return bestMusics
}
