//
//  MakeASpiral.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func spiral(_ n:Int) -> [[Int]] {
    var result: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)

    for pass in 0...n/4{
        if pass*4 == n {break}
        for xCoord in (pass*2)...(n-1-pass*2) {
            result[pass*2][xCoord] = 1
        }
        if pass*4+1 == n {break}
        for yCoord in (pass*2)...(n-1-pass*2){
            result[yCoord][n-1-pass*2] = 1
        }
        if pass*4+2 == n {break}
        for xCoord in (pass*2)...(n-1-pass*2) {
            result[n-1-pass*2][xCoord] = 1
        }
        if pass*4+3 == n {break}
        for yCoord in (pass*2+2)...(n-1-pass*2){
            result[yCoord][pass*2] = 1
        }
        if pass*4+4 == n {break}
        result[pass*2+2][pass*2+1] = 1
    }
    return result
}
