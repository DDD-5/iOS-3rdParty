//
//  Sizes.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//

import UIKit

class Sizes: NSObject {
    static var safeAreaInsets: UIEdgeInsets {
        return UIApplication.shared.delegate?.window??.safeAreaInsets ?? .zero
    }
    
    static var mainTopMenuViewHeight: CGFloat {
        return 52
    }
    
    static var titleViewHeight: CGFloat {
        return 162
    }
    
    static var calendarSize: CGSize {
        return CGSize(width: 325, height: 334)
    }
}
