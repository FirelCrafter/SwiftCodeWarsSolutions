//
//  Spacify.swift
//  CodeWarsKatas
//
//  Created by Михаил Щербаков on 23.04.2022.
//

import Foundation

func spacify(_ str: String) -> String {
    return str.map({  String($0) }).joined(separator: " ")
}
