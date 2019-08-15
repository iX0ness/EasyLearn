//
//  DatabaseManager.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation

class DatabaseManager: NSObject {

    var coreDataStack = CoreDataStack(modelName: "EasyLearn")

    static let shared = DatabaseManager()

    private override init() {}


}
