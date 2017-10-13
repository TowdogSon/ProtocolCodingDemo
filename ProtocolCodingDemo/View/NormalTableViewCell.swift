//
//  NormalTableViewCell.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import UIKit

class NormalTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!

    func updateWithPresenter(presenter:cellPresentable) {
        presenter.updateCell(cell: self)
    }

}
