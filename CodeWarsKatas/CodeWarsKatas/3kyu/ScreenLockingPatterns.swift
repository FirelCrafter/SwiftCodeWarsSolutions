//
//  ScreenLockingPatterns.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

import Foundation

enum Dot: Int {
    case a, b, c, d, e, f, g, h, i
}

func searchPath(dot: String, deep: Int, visited: [String]) -> Int {
    var letter = dot
    let transitions = [
        "A" : ["B", "F", "E", "H", "D", "BC", "EI", "DG"],
        "B" : ["A", "D", "G", "E", "I", "F", "C", "EH"],
        "C" : ["B", "D", "E", "H", "F", "BA", "EG", "FI"],
        "D" : ["A", "B", "C", "E", "I", "H", "G", "EF"],
        "E" : ["A", "B", "C", "D", "F", "G", "H", "I"],
        "F" : ["A", "B", "C", "E", "G", "H", "I", "ED"],
        "G" : ["D", "B", "E", "F", "H", "DA", "EC", "HI"],
        "H" : ["G", "D", "A", "E", "C", "F", "I", "EB"],
        "I" : ["H", "D", "E", "B", "F", "FC", "EA", "HG"]
    ]
    
    if letter.count > 1 {
        
        guard let l = letter.first else { return 0 }
        
        if !visited.contains(String(describing: l)) { return 0 }
        
        letter = String(describing: letter.last!)
    }
    
    
    if visited.contains(letter) { return 0 }
    
    var cost = 1
    if deep > 1 {
        let v = visited + [letter]
        cost = transitions[letter]!.reduce(0) { (sum, d) in
            sum + searchPath(dot: d, deep: deep-1, visited: v)
        }
    }
    
    return cost
}


func countPatterns(from firstDot: Dot, length: Int) -> Int {
    
    if length <= 0 || length > 9 {
        return 0
    }
    
    if length == 1 {
        return 1
    }
    
    let dots = ["A","B","C","D","E","F","G","H","I"]
    
    
    return searchPath(dot: dots[firstDot.rawValue], deep: length, visited: [])
}
