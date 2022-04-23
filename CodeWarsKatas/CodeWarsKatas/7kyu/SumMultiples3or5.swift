//
//  SumMultiples3or5.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func findSum(_ n: Int) -> Int {
  return (0...n).filter({ $0 % 3 == 0 || $0 % 5 == 0 }).reduce(0, +)
}
