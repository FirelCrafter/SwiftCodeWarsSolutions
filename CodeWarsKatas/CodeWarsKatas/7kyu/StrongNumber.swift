//
//  StrongNumber.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func strongNumber(_ number: Int) -> String {
    return String(number).map({ Int(factorial(Int(String($0)) ?? 0)) }).reduce(0, +) == number ? "STRONG!!!!" : "Not Strong !!"
}


func factorial(_ n: Int) -> Double {
  return (1...n).map(Double.init).reduce(1.0, *)
}
