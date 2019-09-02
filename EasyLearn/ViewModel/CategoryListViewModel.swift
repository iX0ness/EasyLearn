//
//  CategoryListViewModel.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 30/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import CoreData
import UIKit

class CategoryListViewModel {


    var fetchResultsController: NSFetchedResultsController<Category>?

    func fetchCategories() {
        DatabaseManager.shared.getCategories { (fetchResultController) in
            do {
                self.fetchResultsController = fetchResultController
                try self.fetchResultsController!.performFetch()

            } catch {
                fatalError("Failed to fetch entities: \(error)")
            }
        }
    }

    func makeViewModel(for indexPath: IndexPath) -> CategoryViewModel {
        let categoryViewModel = CategoryViewModel()
        categoryViewModel.name = fetchResultsController?.fetchedObjects![indexPath.row].name
        categoryViewModel.image = DocumentsManager.shared.getImage(imageName: categoryViewModel.name!)
        return categoryViewModel
    }

    func makeWordsListViewModel(for indexPath: IndexPath) -> WordListViewModel {
        let category = fetchResultsController?.object(at: indexPath)
        let words = category?.words?.allObjects as? [Word]
        var wordListViewModel = WordListViewModel()
        wordListViewModel.words = words!
        return wordListViewModel
    }
}
