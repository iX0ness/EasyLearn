//
//  Word+CoreDataProperties.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 15/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//
//

import Foundation
import CoreData


extension Word {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Word> {
        return NSFetchRequest<Word>(entityName: "Word")
    }

    @NSManaged public var english: String?
    @NSManaged public var translation: String?
    @NSManaged public var imagePath: String?
    @NSManaged public var category: Category?

}
