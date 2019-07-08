//
//  SettingsTableViewDataSource.swift
//  DataSourceForTableView
//
//  Created by Ntobeko Sikithi on 2019/07/08.
//  Copyright © 2019 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import UIKit

class SettingsTableViewDataSource: NSObject, UITableViewDataSource {

    var sections: [SettingsSection]
    
    init(sections: [SettingsSection]) {
        self.sections = sections
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].cellData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting: SettingType = sections[indexPath.section].cellData[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: setting.identifier)  {
            switch setting {
            case .Switch(text: let text):
                cell.textLabel?.text = text
                cell.accessoryType = .detailButton
                cell.accessoryView = UISwitch()
            case .Segue(text: let text):
                cell.textLabel?.text = text
                cell.accessoryType = .disclosureIndicator
            case .Info(text: let text, detail: let detailText):
                cell.textLabel?.text = text
                cell.detailTextLabel?.text = detailText
            }
            return cell
        } else {
            fatalError("Unknown identifier")
        }
    }

}
