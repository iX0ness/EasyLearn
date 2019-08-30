//
//  DatabaseManager.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import CoreData

class DatabaseManager: NSObject {

    var coreDataStack = CoreDataStack(modelName: "EasyLearn")

    static let shared = DatabaseManager()
    private let fetchCategories: NSFetchRequest<Category> = Category.fetchRequest()

    private override init() {}

    func storeWords() {
        let context = coreDataStack.managedContext
        let fetchCategories: NSFetchRequest<Category> = Category.fetchRequest()
        do {
            let result = try context.count(for: fetchCategories)
            if result == 0 {
                let dataFactory = CategoryFactory()
                dataFactory.create(category: .fruits(managedObjectContext: context))
                dataFactory.create(category: .vegetables(managedObjectContext: context))
                coreDataStack.saveContext()
            }
        } catch {
            print(error.localizedDescription)
        }
    }

    func getCategories(completion: (NSFetchedResultsController<Category>) -> Void) {
        let context = coreDataStack.managedContext
        let categoryRequest: NSFetchRequest<Category> = Category.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "topic", ascending: true)
        categoryRequest.sortDescriptors = [sortDescriptor]
        let fetchResultsController = NSFetchedResultsController(fetchRequest: categoryRequest,
                                                                managedObjectContext: context,
                                                                sectionNameKeyPath: #keyPath(Category.topic),
                                                                cacheName: nil)

        completion(fetchResultsController)
    }

    
}
