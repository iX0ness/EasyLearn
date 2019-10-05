//
//  WordListViewModel.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation

class WordListViewModel {
    var category: Category?
    var words: [Word] = []


    func addToWords(_ newWord: NewWord) {
        let context = DatabaseManager.shared.coreDataStack.managedContext
        let word = Word(context: context)
        word.english = newWord.english
        word.translation = newWord.translation
        let words = category?.words?.mutableCopy() as? NSMutableSet
        words?.add(word)
        category?.words = words
        DatabaseManager.shared.coreDataStack.saveContext()
    }

    func delete(word at: IndexPath) {

    }

}
//guard let walkToRemove =
//    currentDog?.walks?[indexPath.row] as? Walk,
//    editingStyle == .delete else {
//        return
//}
////2
//managedContext.delete(walkToRemove)
//do { //3
//    try managedContext.save()
//    //4
//    tableView.deleteRows(at: [indexPath], with: .automatic)
//} catch let error as NSError {
//    print("Saving error: \(error),
//        description: \(error.userInfo)")
//}
