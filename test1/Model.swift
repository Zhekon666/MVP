//
//  Model.swift
//  test1
//
//  Created by Zhekon Kovalevskiy on 09.04.2022.
//  Copyright © 2022 Zhekon. All rights reserved.
//

import Foundation

struct Motivations {
    var text: String
}

extension Motivations {
    static var testData = [
        Motivations(text: "NICE"),
        Motivations(text: "DO IT"),
        Motivations(text: "YEEAHH!"),
        Motivations(text: "LETS GO"),
        Motivations(text: "NICE DAY"),
        Motivations(text: "OOHH YEEAHHH")]
}
