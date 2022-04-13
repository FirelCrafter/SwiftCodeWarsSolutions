//
//  RGBToHexConversion.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 13.04.2022.
//

import Foundation


func rgb(r: Int, g: Int, b: Int) -> String {
    return [r, g, b].map { String(format: "%02X", min(max($0, 0), 255)) }.joined()
}
