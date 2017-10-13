//
//  protocols.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import Foundation
import UIKit
//同一种数据具有同样的属性(都有date)
protocol HasDate {
    var date : String {get set}
}
//MVVM
protocol cellPresentable {
    var mixlabelData : String {get set}
    var dateLabelData : String {get set}
    var imageData :UIImage  {get set}
    func updateCell (cell : NormalTableViewCell)
}

//
extension cellPresentable {

    func updateCell(cell:NormalTableViewCell) {
        cell.title.text = mixlabelData
        cell.date.text = dateLabelData
        cell.img.image = imageData
    }
}
