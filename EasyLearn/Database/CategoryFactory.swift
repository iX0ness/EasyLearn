//
//  DataFactory.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 18/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import CoreData



class CategoryFactory {

    enum CategoryType {
        case fruits(managedObjectContext: NSManagedObjectContext)
        case vegetables(managedObjectContext: NSManagedObjectContext)
    }

    func create(category: CategoryType) {
        switch category {

        case .fruits(let managedObjectContext):
            let fruitsCategory = Category(context: managedObjectContext)
            fruitsCategory.name = "Friuts"
            fruitsCategory.imagePath = DocumentsManager.shared.getFullPath(to: .fruits).path

            let apple = Word(context: managedObjectContext)
            apple.english = "Apple"
            apple.translation = "Яблоко"
            apple.imagePath = DocumentsManager.shared.getFullPath(to: .apple).path
            apple.category = fruitsCategory

            let melon = Word(context: managedObjectContext)
            melon.english = "Melon"
            melon.translation = "Дыня"
            melon.imagePath = DocumentsManager.shared.getFullPath(to: .melon).path
            melon.category = fruitsCategory

            fruitsCategory.addToWords(apple)
            fruitsCategory.addToWords(melon)

        case .vegetables(let managedObjectContext):
            let vegetablesCategory = Category(context: managedObjectContext)
            vegetablesCategory.name = "Vegetables"
            vegetablesCategory.imagePath = DocumentsManager.shared.getFullPath(to: .fruits).path

            let potato = Word(context: managedObjectContext)
            potato.english = "Potato"
            potato.translation = "Картошка"
            potato.imagePath = DocumentsManager.shared.getFullPath(to: .potato).path
            potato.category = vegetablesCategory

            let tomato = Word(context: managedObjectContext)
            tomato.english = "Tomato"
            tomato.translation = "Помидор"
            tomato.imagePath = DocumentsManager.shared.getFullPath(to: .tomato).path
            tomato.category = vegetablesCategory

            vegetablesCategory.addToWords(potato)
            vegetablesCategory.addToWords(tomato)

        }
    }

}
