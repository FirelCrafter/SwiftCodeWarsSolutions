//
//  camelCase.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 13.04.2022.
//

import Foundation

func camelCase(str: String) -> String {
    return str.components(separatedBy: " ").map({$0.capitalized}).joined()
}
