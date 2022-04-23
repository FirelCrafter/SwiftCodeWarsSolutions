//
//  SumByFactors.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func sumOfDivided(_ l: [Int]) -> [(Int, Int)] {
    guard l.count > 0 else { return [] }
    var checked : Set = [1], result = [(Int, Int)](), maxx = max(abs(l.min()!), abs(l.max()!))
    
    for i in 2...maxx {
        if checked.contains(i) {continue}
        let filtered = l.filter { $0.isMultiple(of: i)}
        if filtered.count > 0 {
            result.append((i, filtered.reduce(0, +)))
            var toCheck = i;
            while toCheck <= maxx { checked.insert(toCheck); toCheck += i }
        }
    }
    return result
}
