//
//  SumTwoLowest.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    return array.sorted(by: { $0<$1 })[0...1].reduce(0, +)
}
