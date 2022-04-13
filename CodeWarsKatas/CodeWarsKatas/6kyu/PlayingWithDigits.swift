//
//  PlayingWithDigits.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 13.04.2022.
//

import Foundation

func digPow(for number: Int, using power: Int) -> Int {
    let sum = String(number).enumerated().reduce(0) {
            let number = Int(String($1.1))!
            return $0 + Int(pow(Double(number), Double(power + $1.0)))
        }
        return sum % number == 0 ? sum / number : -1
}
