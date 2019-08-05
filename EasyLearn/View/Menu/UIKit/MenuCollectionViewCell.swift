//
//  MenuCollectionViewCell.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 30/07/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell, Colorable {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = setColor(color: .copper)
    }

    func configure(with viewModel: ItemViewModel) {
        itemImageView.image = viewModel.image
        itemTitle.text = viewModel.name
    }

}
