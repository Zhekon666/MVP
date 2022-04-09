//
//  Presenter.swift
//  test1
//
//  Created by Zhekon Kovalevskiy on 09.04.2022.
//  Copyright © 2022 Zhekon. All rights reserved.
//

protocol ChangeViewColorProtocol: AnyObject {
    func getColor(color:UIColor)
}

protocol GetTextProtocol: AnyObject {
    func getText(text: String)
}

import Foundation
import UIKit
class GeneralVcPresenter {
    private unowned var colorProtocol: ChangeViewColorProtocol
    private unowned var textProtocol: GetTextProtocol
    private var motivationArray = Motivations.testData
    
    init(colorProtocol: ChangeViewColorProtocol, textProtocol: GetTextProtocol) {
        self.colorProtocol = colorProtocol
        self.textProtocol = textProtocol
    }
 
    func buttonPressed() {
        let randomColor = UIColor.random()
        colorProtocol.getColor(color: randomColor)
        let randomText = motivationArray.randomElement()
        textProtocol.getText(text: randomText?.text ?? "")
    }
}

