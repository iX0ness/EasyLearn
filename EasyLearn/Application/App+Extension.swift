//
//  App+Extension.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 02/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {

    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}


