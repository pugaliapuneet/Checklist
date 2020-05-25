//
//  ViewController.swift
//  Checklist
//
//  Created by Puneet Pugalia on 25/05/20.
//  Copyright © 2020 Puneet Pugalia. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //define number of rows
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    //fill data
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row % 5 == 0 {
                label.text = "Take a jog"
            } else if indexPath.row % 4 == 0 {
                label.text = "Watch a movie"
            } else if indexPath.row % 3 == 0 {
                label.text = "Code an app"
            } else if indexPath.row % 2 == 0 {
                label.text = "Walk the dog"
            } else if indexPath.row % 1 == 0 {
                label.text = "Study design patterns"
            }
        }
        
        return cell
    }
    
    //tick/untick on tap with animated effect
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

}

