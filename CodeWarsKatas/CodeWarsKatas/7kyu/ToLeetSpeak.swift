//
//  ToLeetSpeak.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 13.04.2022.
//

import Foundation

func toLeetSpeak(s: String) -> String {
    var res = ""
    s.map({$0.uppercased()}).forEach { str in
        switch str {
        case "A": return res.append("@")
        case "B": return res.append("8")
        case "C": return res.append("(")
        case "D": return res.append("D")
        case "E": return res.append("3")
        case "F": return res.append("F")
        case "G": return res.append("6")
        case "H": return res.append("#")
        case "I": return res.append("!")
        case "J": return res.append("J")
        case "K": return res.append("K")
        case "L": return res.append("1")
        case "M": return res.append("M")
        case "N": return res.append("N")
        case "O": return res.append("0")
        case "P": return res.append("P")
        case "Q": return res.append("Q")
        case "R": return res.append("R")
        case "S": return res.append("$")
        case "T": return res.append("7")
        case "U": return res.append("U")
        case "V": return res.append("V")
        case "W": return res.append("W")
        case "X": return res.append("X")
        case "Y": return res.append("Y")
        case "Z": return res.append("2")
        case " ": return res.append(" ")
        default: "Not an alpha"
        }
    }
    
    return res
}
