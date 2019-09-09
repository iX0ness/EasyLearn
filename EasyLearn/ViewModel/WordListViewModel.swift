//
//  WordListViewModel.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation

struct WordListViewModel {
    var category: Category?
    var words: [Word] = []


    func addToWords(_ newWord: NewWord) {
        let context = DatabaseManager.shared.coreDataStack.managedContext
        let word = Word(context: context)
        word.english = newWord.english
        word.translation = newWord.translation
        category?.addToWords(word)
    }

}
