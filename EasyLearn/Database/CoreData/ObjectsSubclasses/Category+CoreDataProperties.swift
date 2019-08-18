//
//  Category+CoreDataProperties.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 15/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var imagePath: String?
    @NSManaged public var name: String?
    @NSManaged public var words: NSSet?

}

// MARK: Generated accessors for words
extension Category {

    @objc(addWordsObject:)
    @NSManaged public func addToWords(_ value: Word)

    @objc(removeWordsObject:)
    @NSManaged public func removeFromWords(_ value: Word)

    @objc(addWords:)
    @NSManaged public func addToWords(_ values: NSSet)

    @objc(removeWords:)
    @NSManaged public func removeFromWords(_ values: NSSet)

    @objc(setKey:)
    public func setKey(for words: [Word]) {
        words.forEach { (word) in
            word.category = self
        }
    }
}
