//
//  PageViewController.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//
//
import UIKit
import SnapKit

enum PageType: CaseIterable {
    case calendar, detail, total
}

class PageViewController: UIViewController {
    
    var topMenuView: TopMenuView?
    var titleView: TitleView?
    
    let pageType: PageType
    
    init(pageType: PageType) {
        self.pageType = pageType
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = Colors.backgroundGray
        
        let topMenuView = TopMenuView()
        view.addSubview(topMenuView)
        topMenuView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(Sizes.safeAreaInsets.top)
            make.left.right.equalToSuperview()
            make.height.equalTo(Sizes.mainTopMenuViewHeight)
        }
        self.topMenuView = topMenuView
        
        let titleView = TitleView()
        view.addSubview(titleView)
        titleView.snp.makeConstraints { make in
            make.top.equalTo(topMenuView.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalTo(Sizes.titleViewHeight)
        }
        self.titleView = titleView
    }
    
}
