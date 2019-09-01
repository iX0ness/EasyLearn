//
//  LibraryViewController+Extension.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 17/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import Foundation
import UIKit

extension LibraryViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        if let fetchResController = viewModel.fetchResultsController {
            return fetchResController.sections!.count
        }
        return 0
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionInfo = viewModel.fetchResultsController?.sections?[section]
        return sectionInfo?.name
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: AppConstants.LibraryView.categoryTableViewCellID, for: indexPath) as? CategoryTableViewCell {
            cell.categoryCollectionView.delegate = self
            cell.categoryCollectionView.dataSource = self
            return cell
        }

        return UITableViewCell()
    }


}
