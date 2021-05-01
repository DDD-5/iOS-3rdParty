//
//  RootNavigationController.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/01.
//

import UIKit

class RootNavigationController: UINavigationController {
    
    static let rootViewController = UIViewController()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    init() {
        super.init(rootViewController: Self.rootViewController)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        setNavigationBarHidden(true, animated: false)
    }
    
}
