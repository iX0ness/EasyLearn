//
//  CategoryTableViewCell.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 15/08/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryCollectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        categoryCollectionView.register(UINib(nibName: AppConstants.LibraryView.categoryCollectionViewCellNib, bundle: nil), forCellWithReuseIdentifier: AppConstants.LibraryView.categoryCollectionViewCellID)
    }
}
