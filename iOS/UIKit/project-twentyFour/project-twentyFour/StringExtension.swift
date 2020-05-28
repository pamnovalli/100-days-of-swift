//
//  StringExtension.swift
//  project-twentyFour
//
//  Created by Pamela Ianovalli on 27/05/20.
//  Copyright © 2020 Pamela Ianovalli. All rights reserved.
//

import Foundation

extension String {
    func withPrefix(prefix: String) -> String {
        if self.hasPrefix(prefix)  {
            return self
        } else {
            return String(prefix + self)
        }
    }
}

extension String {
    var isNumeric: Bool {
        let decimalCharacters = CharacterSet.decimalDigits

        let decimalRange = self.rangeOfCharacter(from: decimalCharacters)

        if decimalRange != nil {
            return true
        }
        return false
    }
}

extension String {
    var lines: [String] {
        var stringArray = [String]()
        var string = String()
        for character in self {
            if character == "\n" {
                stringArray.append(string)
                string.removeAll()
            } else {
                string.append(character)
            }
        }
        return stringArray
    }
}
