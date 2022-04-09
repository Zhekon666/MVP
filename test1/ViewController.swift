//
//  ViewController.swift
//  test1
//
//  Created by Zhekon on 27.03.2020.
//  Copyright © 2020 Zhekon. All rights reserved.
//

import UIKit

class ViewControllerTest: UIViewController {
    private lazy var presenter: GeneralVcPresenter = {GeneralVcPresenter(colorProtocol: self, textProtocol: self) }()
    let mainView = GeneralView()
    
    override func loadView() {
        view = mainView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        mainView.changeButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    @objc private func buttonPressed() {
        presenter.buttonPressed()
    }
}

//MARK: Protocolos
extension ViewControllerTest: ChangeViewColorProtocol, GetTextProtocol {
    func getColor(color: UIColor) {
        mainView.topView.backgroundColor = color
    }
    
    func getText(text: String) {
        mainView.motivationLabel.text = text
    }
}

