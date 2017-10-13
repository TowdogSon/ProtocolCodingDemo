//
//  FistDemoModel.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import Foundation
//每一个ViewController最好有一个数据模型相当于viewModel的作用,控制器拿到的就是直接能用的数据

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
