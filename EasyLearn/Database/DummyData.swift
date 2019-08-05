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

    func generateMenuItems() -> [MenuItem] {
        return [MenuItem(name: "Learn", imagePath: "reading"),
                MenuItem(name: "Exam", imagePath: "exam"),
                MenuItem(name: "Words library", imagePath: "library"),
                MenuItem(name: "Contact", imagePath: "contact")
               ]
    }
}
