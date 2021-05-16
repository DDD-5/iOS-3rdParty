//
//  Fonts.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//

import UIKit

class Fonts: NSObject {
    static func font(weight: UIFont.Weight = .medium, size: CGFloat) -> UIFont {
        var font: UIFont?
        switch weight {
        case .bold:
             font = UIFont(name: "BinggraeSamanco-Bold", size: size)
        case .regular:
            font = UIFont(name: "BinggraeSamanco", size: size)
        default:
            font = nil
        }
        
        return font ?? UIFont.systemFont(ofSize: size, weight: weight)
    }
}
