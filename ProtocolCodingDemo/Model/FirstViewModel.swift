//
//  FirstViewModel.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import Foundation
import UIKit

struct FirstViewModel: cellPresentable {
    var mixlabelData = ""
    var dateLabelData = ""
    var imageData = UIImage()

    init(model:Event) {
        self.dateLabelData = model.date
        self.mixlabelData = model.eventTitle
        self.imageData = UIImage(named: "eve")!
    }

    init(model:Festival) {
        self.dateLabelData = model.date
        self.mixlabelData = model.festivalName
        self.imageData = UIImage(named: "fes")!
    }
}
