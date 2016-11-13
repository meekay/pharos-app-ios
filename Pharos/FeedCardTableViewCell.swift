//
//  FeedCardTableViewCell.swift
//  Pharos
//
//  Created by Michael Kolb on 11/12/16.
//  Copyright © 2016 Pharos. All rights reserved.
//

import UIKit

class FeedCardTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
