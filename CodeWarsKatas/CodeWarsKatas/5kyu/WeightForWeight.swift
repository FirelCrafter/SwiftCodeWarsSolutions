//
//  WeightForWeight.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 13.04.2022.
//

import Foundation

func orderWeight(s: String) -> String {
    let sorted = s.split(separator: " ").sorted { firstWeight, secondWeight in

        let firstWeightCooked = firstWeight.reduce(0) { $0 + Int(String($1))! }
        let secondWeightCooked = secondWeight.reduce(0) { $0 + Int(String($1))! }

        return firstWeightCooked == secondWeightCooked ? firstWeight < secondWeight : firstWeightCooked < secondWeightCooked
    }

    return sorted.joined(separator: " ")
}
