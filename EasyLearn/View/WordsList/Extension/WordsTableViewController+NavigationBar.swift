//
//  WordsTableViewController+NavigationBar.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 06/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation

import UIKit

extension WordsTableViewController {

    func setupNavigationItem() {
        func addBarButtonItem() {
            let addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWord))
            self.navigationItem.setRightBarButton(addBarButtonItem, animated: false)
        }

        func setTitle() {
            guard let categoryName = viewModel.category?.name else {return}
            self.navigationItem.title = categoryName
        }

        addBarButtonItem()
        setTitle()
    }

    @objc func addWord() {
        coordinator?.addWords(parentVC: self)
    }


}
