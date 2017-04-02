//
//  MenuTableViewCell.swift
//  Collaborative Reading App
//
//  Created by Saif Al-Din Ali on 2017-03-29.
//  Copyright © 2017 Daniel Dobre. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageIcon: UIImageView!
    
    @IBOutlet weak var labelMenuName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
