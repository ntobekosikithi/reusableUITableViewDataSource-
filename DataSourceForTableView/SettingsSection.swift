//
//  SettingsSection.swift
//  DataSourceForTableView
//
//  Created by Ntobeko Sikithi on 2019/07/08.
//  Copyright © 2019 Ntobeko Sikithi. All rights reserved.
//

struct SettingsSection {
    var title: String?
    var cellData: [SettingType]
    
    init(title: String?, cellData: [SettingType]) {
        self.title = title
        self.cellData = cellData
    }
}
