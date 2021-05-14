//
//  Fonts.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//

import UIKit

class Fonts: NSObject {
    static func font(weight: UIFont.Weight = .medium, size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: weight)
    }
}
