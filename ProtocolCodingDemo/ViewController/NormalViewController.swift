//
//  NormalViewController.swift
//  ProtocolCodingDemo
//
//  Created by tuikai on 2017/10/13.
//  Copyright © 2017年 tuikai. All rights reserved.
//

import UIKit
let firstCellID = "FirstDemoCell"
class NormalViewController: UIViewController {


    @IBOutlet weak var mtableView: UITableView!
    var mdata = FirstDemoModel()                //数据
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension NormalViewController:UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView:  UITableView, numberOfRowsInSection section: Int) -> Int {
        return mdata.mixedArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: firstCellID, for: indexPath) as! NormalTableViewCell
              // 回归异构数据的真实身份并区别显示
        if let festival  = mdata.mixedArray[indexPath.row] as? Festival {
            cell.img.image = UIImage(named: "fes")
            cell.title.text = festival.festivalName
            cell.date.text = festival.date
        } else if let event = mdata.mixedArray[indexPath.row] as? Event {
            cell.img.image = UIImage(named: "eve")
            cell.title.text = event.eventTitle
            cell.date.text = event.date
        }
        return cell
    }
}
