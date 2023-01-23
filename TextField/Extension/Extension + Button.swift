//
//  Extension + Button.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import Foundation
import UIKit

extension UIButton {
    func createSubmit() -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = .blue
        btn.setTitle("Submit", for: .normal)
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
}
