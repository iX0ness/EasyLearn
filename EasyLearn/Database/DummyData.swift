//
//  DummyData.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 30/07/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation


class DummyData {

    static let shared = DummyData()



    func getMenuItems() -> [MenuItem] {
        var items: [MenuItem] = []
        ItemName.allCases.forEach { (item) in
            let menuItem = MenuItem(name: item.rawValue,
                                imagePath:DocumentsManager.shared.getItemImagePath(itemName: item)!
            )
            items.append(menuItem)
        }

        return items

    }

    func generateMenuItems() -> [MenuItem] {
        return [MenuItem(name: "Learn", imagePath: "Reading"),
                MenuItem(name: "Exam", imagePath: "Exam"),
                MenuItem(name: "Words library", imagePath: "Library"),
                MenuItem(name: "Contact", imagePath: "Contact")
               ]
    }
}
