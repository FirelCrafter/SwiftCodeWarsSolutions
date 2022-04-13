//
//  ValidBraces.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 13.04.2022.
//

import Foundation


func validBraces(string: String) -> Bool {
    let str = string
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "{}", with: "")
            .replacingOccurrences(of: "[]", with: "")
            .replacingOccurrences(of: "()", with: "")
        switch str {
        case "": return true
        case string: return false
        default: return validBraces(string: str)
        }
    }
