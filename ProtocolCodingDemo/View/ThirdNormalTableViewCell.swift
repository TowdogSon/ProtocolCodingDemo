//
//  ThirdNormalTableViewCell.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import UIKit

class ThirdNormalTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
