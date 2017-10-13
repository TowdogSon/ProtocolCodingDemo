//
//  FistDemoModel.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import Foundation
//viewController的直接数据源,所有数据通过这里拿到

struct FirstDemoModel {
    var festivalArray = festivalData.map{Festival(dic:$0)}
    var eventArray = eventData.map{Event(dict: $0)}
    var mixedArray:[HasDate] = []
    init() {
        //异构数组根据日期排序
        festivalArray.forEach{mixedArray.append($0)}
        eventArray.forEach{mixedArray.append($0)}
        mixedArray.sort{ $0.date < $1.date}
    }
}
