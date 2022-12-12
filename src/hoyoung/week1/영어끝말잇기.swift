//
//  영어끝말잇기.swift
//  Algorithm21
//
//  Created by 이호영 on 2022/11/22.
//
import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    for index in 1..<words.count {
        let currentWord = words[index]
        let compareWords = Array(words[0..<index])
        
        if compareWords.contains(currentWord) || compareWords[index-1].suffix(1) != currentWord.prefix(1) {
            let errorPerson = index % n + 1
            let errorPersonSequence = index / n + 1

            return [errorPerson, errorPersonSequence]
        }
    }
    
    return [0, 0]
}
