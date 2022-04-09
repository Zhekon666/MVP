//
//  GeneralView.swift
//  test1
//
//  Created by Zhekon on 27.03.2020.
//  Copyright © 2020 Zhekon. All rights reserved.
//

import UIKit
import PinLayout

class GeneralView: UIView {
    
    let topView = UIView()
    let changeButton = UIButton()
    let motivationLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        addSubview(topView)
        topView.layer.cornerRadius = 10
        topView.backgroundColor = .darkGray
        
        addSubview(changeButton)
        changeButton.layer.cornerRadius = 10
        changeButton.backgroundColor = .lightGray
        changeButton.setTitle("Change color", for: .normal)
        
        topView.addSubview(motivationLabel)
        motivationLabel.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        topView.pin.top(150).horizontally(20).height(UIScreen.main.bounds.width - 40)
        changeButton.pin.below(of: topView).horizontally(20).height(42).marginTop(25)
        motivationLabel.pin.all(20)
    }
 }
