//
//  TopMenuView.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//

import UIKit
import SnapKit

class TopMenuView: UIView {
    lazy var settingButton: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(named: "Ic_Setting")
        button.setImage(image, for: .normal)
        return button
    }()
    
    lazy var messageButton: UIButton = {
        let button = UIButton(type: .custom)
        let image = UIImage(named: "Ic_Message")
        button.setImage(image, for: .normal)
        return button
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.font(weight: .regular, size: 18.0)
        label.text = "2021. 04"
        label.textColor = Colors.black
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
//        label.isHidden = true
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        backgroundColor = .clear
        
        addSubview(settingButton)
        settingButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(19)
            make.centerY.equalToSuperview()
            make.size.equalTo(Sizes.mainTopMenuButtonSize)
        }
        
        addSubview(messageButton)
        messageButton.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-19)
            make.centerY.equalToSuperview()
            make.size.equalTo(Sizes.mainTopMenuButtonSize)
        }
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(settingButton.snp.right).offset(10)
            make.right.equalTo(messageButton.snp.left).offset(-10)
        }
    }
}
