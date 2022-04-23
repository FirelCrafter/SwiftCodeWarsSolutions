//
//  multiples3or5.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func solution(_ num: Int) -> Int {
  return (0 ..< num).lazy.reduce(0) { $1.isMultiple(of: 3) || $1.isMultiple(of: 5) ? $0 + $1 : $0 }
}
