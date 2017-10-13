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
           let viewModel = FirstViewModel(model: festival)
            cell.updateWithPresenter(presenter: viewModel)
        } else if let event = mdata.mixedArray[indexPath.row] as? Event {
            let viewModel = FirstViewModel(model: event)
            cell.updateWithPresenter(presenter: viewModel)
        }
        return cell
    }
}
