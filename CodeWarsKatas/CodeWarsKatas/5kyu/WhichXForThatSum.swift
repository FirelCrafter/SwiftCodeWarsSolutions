//
//  WhichXForThatSum.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func solve(_ m: Double) -> Double {
    return ((2*m+1)-pow(4*m+1, 0.5))/(2*m)
}
