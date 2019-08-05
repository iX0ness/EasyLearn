//
//  ItemViewModel.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 29/07/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

class ItemViewModel {
    var name: String
    var image: UIImage

    init(name: String, image: UIImage) {
        self.name = name
        self.image = image
    }
}
