//
//  Extension + ImageView.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import Foundation
import UIKit

extension UIImageView {
    func createUserImage() -> UIImageView {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "1")
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }
}
