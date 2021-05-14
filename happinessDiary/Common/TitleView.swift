//
//  TitleView.swift
//  happinessDiary
//
//  Created by BeomSeok on 2021/05/15.
//

import UIKit
import SnapKit

class TitleView: UIView {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.font(weight: .medium, size: 27.0)
        label.text = Constants.mainTitle
        label.textColor = Colors.red
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.font = Fonts.font(weight: .bold, size: 45.0)
        // todo - date setting
        label.text = "2021. 04"
        label.textColor = Colors.black
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        return label
    }()
    
    lazy var lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Colors.red
        return view
    }()
    
    
    init() {
        super.init(frame: .zero)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.right.equalToSuperview()
            make.height.equalTo(30)
        }
        
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
        
        let dateLabelText: String = "2021. 04"
        let dateLabelSize = dateLabelText.boundingRect(with: CGSize(width: UIScreen.main.bounds.width, height: 50), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font : Fonts.font(weight: .bold, size: 45.0)], context: nil)
        addSubview(lineView)
        lineView.snp.makeConstraints { make in
            make.top.equalTo(dateLabel.snp.bottom)
            make.centerX.equalToSuperview()
            make.width.equalTo(dateLabelSize.width)
            make.height.equalTo(3)
        }
    }
    
}
