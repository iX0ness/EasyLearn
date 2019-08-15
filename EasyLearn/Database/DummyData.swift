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
        return [MenuItem(name: "Learn", imagePath: "Reading"),
                MenuItem(name: "Exam", imagePath: "Exam"),
                MenuItem(name: "Words library", imagePath: "Library"),
                MenuItem(name: "Contact", imagePath: "Contact")
               ]
    }
}
