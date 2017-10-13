//
//  Model.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import Foundation
//所有数据模型的搭建及初始化

//节日模型
struct Festival:HasDate {
    var date = ""
    var festivalName = ""
    init(dic:[String:Any]) {
        date = dic["date"] as? String ?? "日期错误"
        festivalName = dic["name"] as? String ?? "节日名错误"
    }
}

//待办事宜模型

struct Event :HasDate{
    var date = ""
    var eventTitle = ""
    init(dict:[String:Any]) {
        date = dict["date"] as? String ?? "日期错误"
        eventTitle = dict["title"] as? String ?? "事件名错误"
    }
}

