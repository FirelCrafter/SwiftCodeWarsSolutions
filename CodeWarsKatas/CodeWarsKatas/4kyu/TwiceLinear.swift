//
//  TwiceLinear.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func dblLinear(_ n: Int) -> Int {
    var u = [1], x = 0, y = 0
        (0..<n).forEach { _ in
            let nextX = 2 * u[x] + 1, nextY = 3 * u[y] + 1
            if nextX <= nextY {
                u.append(nextX); x += 1
                if nextY == nextX {y += 1}
            } else {
                u.append(nextY); y += 1
            }
        }
        return u[n]
}
