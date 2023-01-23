//
//  Extension + Segment.swift
//  TextField
//
//  Created by Artem on 23.01.2023.
//

import Foundation
import UIKit

extension UISegmentedControl {
    func createSegment() -> UISegmentedControl {
        let seg = UISegmentedControl(items: Photo.photo)
        seg.selectedSegmentIndex = 3
        seg.layer.cornerRadius = 10
        seg.selectedSegmentIndex = 0
        seg.translatesAutoresizingMaskIntoConstraints = false
        return seg
    }
}
