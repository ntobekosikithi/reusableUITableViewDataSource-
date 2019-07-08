//
//  ViewController.swift
//  DataSourceForTableView
//
//  Created by Ntobeko Sikithi on 2019/07/08.
//  Copyright © 2019 Ntobeko Sikithi. All rights reserved.
//

import UIKit

struct Model {
    static let data = [
        SettingsSection(title: "General",
                        cellData: [SettingType.Switch(text: "Dark mode"),
                                   SettingType.Switch(text: "Auto save"),
                                   SettingType.Segue(text: "Language")]),
        SettingsSection(title: "Stats",
                        cellData: [SettingType.Info(text: "Usage", detail: "2 days")])
    ]
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let dataSource = SettingsTableViewDataSource(sections: Model.data)
    let delegate = SettingsTableViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = dataSource
        self.tableView.delegate = delegate
    }

}

