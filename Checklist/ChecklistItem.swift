//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Puneet Pugalia on 25/05/20.
//  Copyright © 2020 Puneet Pugalia. All rights reserved.
//

import Foundation

class ChecklistItem {
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
}
