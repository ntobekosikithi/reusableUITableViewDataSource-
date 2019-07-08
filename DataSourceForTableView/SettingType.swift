//
//  SettingType.swift
//  DataSourceForTableView
//
//  Created by Ntobeko Sikithi on 2019/07/08.
//  Copyright © 2019 Ntobeko Sikithi. All rights reserved.
//

enum SettingType {
    case Switch(text: String) //on-off
    case Segue(text: String) //navigate to a sub-section
    case Info(text: String, detail: String) //e.g. usage stats
    
    var identifier: String {
        switch self {
        case .Info: return "infoCell"
        case .Segue: return "segueCell"
        case .Switch: return "switchCell"
        }
    }
}
