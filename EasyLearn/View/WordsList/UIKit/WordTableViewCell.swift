//
//  WordTableViewCell.swift
//  EasyLearn
//
//  Created by Levchuk Misha on 02/09/2019.
//  Copyright © 2019 Levchuk Misha. All rights reserved.
//

import UIKit

class WordTableViewCell: UITableViewCell {
    @IBOutlet weak var wordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
