//
//  Extension + TextField.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import Foundation
import UIKit

extension UITextField {
    func createEmail() -> UITextField {
        let text = UITextField()
        text.borderStyle = .bezel
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Enter email"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
    
    func createPassword() -> UITextField {
        let text = UITextField()
        text.isSecureTextEntry = true
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Enter password"
        text.borderStyle = .bezel
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
    
    func createName() -> UITextField {
        let text = UITextField()
        text.borderStyle = .bezel
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Enter name"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
    
    func createSurname() -> UITextField {
        let text = UITextField()
        text.borderStyle = .bezel
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Enter surname"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
    
    func createCountry() -> UITextField {
        let text = UITextField()
        text.borderStyle = .bezel
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Enter country"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
    
    func createCity() -> UITextField {
        let text = UITextField()
        text.borderStyle = .bezel
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.placeholder = "Enter city"
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
    
    func infoUser(_ word: String) -> UITextField {
        let text = UITextField()
        text.borderStyle = .bezel
        text.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        text.text = word
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }
}
