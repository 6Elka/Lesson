//
//  Extension + Label.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import Foundation
import UIKit

extension UILabel {
    func createLabel() -> UILabel {
        let lbl = UILabel()
        lbl.text = "Registration"
        lbl.font = .systemFont(ofSize: 40, weight: .semibold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
    
    func list(_ text: String) -> UILabel {
        let lbl = UILabel()
        lbl.text = text
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 20, weight: .semibold)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }
}
