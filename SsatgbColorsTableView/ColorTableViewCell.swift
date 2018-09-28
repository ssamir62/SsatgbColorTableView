//
//  ColorTableViewCell.swift
//  SsatgbColorsTableView
//
//  Created by Sharoze Amir on 9/28/18.
//  Copyright © 2018 Sharoze Amir. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var ColorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
