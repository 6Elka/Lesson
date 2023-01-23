//
//  Validator.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import Foundation

struct Validator {
    let numbers = "1234567890"
    
    func hasNumber(_ text: String) -> Bool {
        for number in numbers {
            if text.contains(number) {return true}
        }
        return false
    }
}
