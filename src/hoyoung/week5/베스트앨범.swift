//
//  베스트앨범.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/12/13.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    var genreDic: [String: Int] = [:]
    var arr: [(String, Int, Int)] = []
    var album: [Int] = []
    
    for (index, genre) in genres.enumerated() {
        if let num = genreDic[genre] {
            genreDic[genre]! += plays[index]
        } else {
            genreDic[genre] = plays[index]
        }
        
        arr.append((genre, plays[index], index))
    }
    arr.sort(by: { $0.1 > $1.1 })
    print(arr)
    let sortGenre = genreDic.sorted(by: { $0.value > $1.value })
    
    for sortGenre in sortGenre {
        let songs = arr.filter({ $0.0 == sortGenre.key }).prefix(2).map { $0.2 }
        album += songs
    }
    
    print(genreDic)
    print(sortGenre)
    
    return album
}
