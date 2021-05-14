//
//  ColorSet.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//

import UIKit

class ColorSet: NSObject {
    // MARK:- Color Utils
    static public func color(hex: Int64, alpha: Float) -> UIColor {
        let red = (hex >> 16) & 0xff
        let green = (hex >> 8) & 0xff
        let blue = hex & 0xff
        return UIColor(red: CGFloat(red) / 255.0,
                     green: CGFloat(green) / 255.0,
                     blue: CGFloat(blue) / 255.0,
                     alpha: CGFloat(alpha))
    }
    
    static public func hexColor(with hexString: String) -> Int64 {
        let colorString = hexString.replacingOccurrences(of: "#", with: "").uppercased()
        let hexInt = Int64(colorString as String, radix: 16)!
        return hexInt
    }
    
    static public func color(hex: Int64) -> UIColor {
        return self.color(hex: hex, alpha: 1.0);
    }
    
    public static func color(hexString: String) -> UIColor? {
        guard hexString.isEmpty == false else { return nil }
        return color(hex: hexColor(with: hexString))
    }
    
    
    // MARK:- Color Constants
    static var white: UIColor {
        return color(hex: 0xffffff)
    }
    
    static var black: UIColor {
        return color(hex: 0x222222)
    }
    
    static var red: UIColor {
        return color(hex: 0xf1665b)
    }
    
    static var pointYellow: UIColor {
        return color(hex: 0xffda78)
    }
    
    static var gray: UIColor {
        return color(hex: 0xeeeeee)
    }
    
    static var backgroundGray: UIColor {
        return color(hex: 0xf5f5f5)
    }
    
    
}
