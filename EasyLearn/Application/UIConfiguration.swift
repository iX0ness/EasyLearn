//
//  UIConfiguration.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 02/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

enum ColorAsset {
    case copper
    case chestnut
    case fadedJade
    case tamarind
    case softPeach
}

protocol Colorable {
    func setColor(color: ColorAsset) -> UIColor

}

extension Colorable {

    func setColor(color: ColorAsset) -> UIColor {
        switch color {
        case .copper:
            return UIColor(red: 183/255, green: 131/255, blue: 56/255, alpha: 1.0)
        case .chestnut:
            return UIColor(red: 145/255, green: 92/255, blue: 76/255, alpha: 1.0)
        case .fadedJade:
            return UIColor(red: 64/255, green: 104/255, blue: 106/255, alpha: 1.0)
        case .tamarind:
            return UIColor(red: 47/255, green: 24/255, blue: 18/255, alpha: 1.0)
        case .softPeach:
            return UIColor(red: 142/255, green: 95/255, blue: 82/255, alpha: 1.0)
        }
    }
}
