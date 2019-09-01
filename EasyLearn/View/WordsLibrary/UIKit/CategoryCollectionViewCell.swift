//
//  CategoryCollectionViewCell.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 01/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }


    func configure(with viewModel: CategoryViewModel) {
        self.categoryImageView.image = viewModel.image
        self.categoryNameLabel.text = viewModel.name
    }

    func setupUI() {
        categoryImageView.contentMode = .scaleToFill
    }
}
