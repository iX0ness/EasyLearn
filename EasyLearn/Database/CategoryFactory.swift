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

    enum Topic: String {
        case food = "Food"
    }

    func create(category: CategoryType) {
        switch category {

        case .fruits(let managedObjectContext):
            let fruitsCategory = Category(context: managedObjectContext)
            fruitsCategory.name = "Friuts"
            fruitsCategory.topic = Topic.food.rawValue

            let apple = Word(context: managedObjectContext)
            apple.english = "Apple"
            apple.translation = "Яблоко"
            apple.category = fruitsCategory

            let melon = Word(context: managedObjectContext)
            melon.english = "Melon"
            melon.translation = "Дыня"
            melon.category = fruitsCategory

            fruitsCategory.addToWords(apple)
            fruitsCategory.addToWords(melon)

        case .vegetables(let managedObjectContext):
            let vegetablesCategory = Category(context: managedObjectContext)
            vegetablesCategory.name = "Vegetables"
            vegetablesCategory.topic = Topic.food.rawValue

            let potato = Word(context: managedObjectContext)
            potato.english = "Potato"
            potato.translation = "Картошка"
            potato.category = vegetablesCategory

            let tomato = Word(context: managedObjectContext)
            tomato.english = "Tomato"
            tomato.translation = "Помидор"
            tomato.category = vegetablesCategory

            vegetablesCategory.addToWords(potato)
            vegetablesCategory.addToWords(tomato)

        }
    }

}
