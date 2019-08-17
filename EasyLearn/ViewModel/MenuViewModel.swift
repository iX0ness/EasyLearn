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
        let itemViewModel = ItemViewModel()
        itemViewModel.configure(with: item)
        return itemViewModel
    }

    mutating func fetchMenuItems() {
        var items: [MenuItem] = []
        ItemName.allCases.forEach { (item) in
            let menuItem = MenuItem(name: item.rawValue,
                                    imagePath:DocumentsManager.shared.getItemImagePath(itemName: item)!
            )
            items.append(menuItem)
        }
        self.menuItems = items
    }

}
