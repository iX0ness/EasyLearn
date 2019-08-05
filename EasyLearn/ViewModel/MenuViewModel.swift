//
//  MenuViewModel.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 29/07/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

struct MenuViewModel {

    var menuItems: [MenuItem] = []

    var count: Int {
        return self.menuItems.count
    }

    public init() {}

    func getItem(at indexPath: IndexPath) -> ItemViewModel {
        let item = menuItems[indexPath.row]
        return ItemViewModel(name: item.name, image: UIImage(named: "\(item.imagePath)")!)
    }

    mutating func fetchItems() {
        menuItems = DummyData.shared.generateMenuItems()

    }

}
