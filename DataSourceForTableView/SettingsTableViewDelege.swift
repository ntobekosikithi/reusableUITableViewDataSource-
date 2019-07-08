//
//  SettingsTableViewDelege.swift
//  DataSourceForTableView
//
//  Created by Ntobeko Sikithi on 2019/07/08.
//  Copyright © 2019 Ntobeko Sikithi. All rights reserved.
//

import Foundation
import UIKit

class SettingsTableViewDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = Model.data[indexPath.section]
        let item: SettingType = section.cellData[indexPath.row]
        switch item {
        case .Segue(text: let text):
            print(text)
            
        case .Switch(let text):
            print(text)
        case .Info(let text, let detail):
            print(text)
            print(detail)
        }
    }
    
    
}
