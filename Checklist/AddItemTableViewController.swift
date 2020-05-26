//
//  AddItemTableViewController.swift
//  Checklist
//
//  Created by Puneet Pugalia on 26/05/20.
//  Copyright © 2020 Puneet Pugalia. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
    }
    
}
