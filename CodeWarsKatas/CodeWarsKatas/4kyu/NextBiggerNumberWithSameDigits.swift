//
//  NextBiggerNumberWithSameDigits.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 22.04.2022.
//

import Foundation

func nextBigger(num: Int) -> Int? {
    var digits = String(num).compactMap { $0.wholeNumberValue }
    var i = digits.count - 1
    
    while i > 0 && digits[i - 1] >= digits[i] {
        i -= 1
    }
    
    guard i > 0 else { return nil }
    
    var j = digits.count - 1
    while digits[j] <= digits[i - 1] {
        j -= 1
    }
    
    digits.swapAt(i - 1, j)
    
    j = digits.count - 1
    while i < j {
        digits.swapAt(i, j)
        i += 1
        j -= 1
    }
    
    return Int(digits.reduce("", { $0 + String($1) }))
}
