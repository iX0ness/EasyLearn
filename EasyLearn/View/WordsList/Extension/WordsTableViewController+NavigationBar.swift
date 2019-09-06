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


    func addBarButtonItem() {
        let addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: coordinator, action: #selector(coordinator?.addWords))
        self.navigationItem.setRightBarButton(addBarButtonItem, animated: false)
    }


}
