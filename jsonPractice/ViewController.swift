//
//  ViewController.swift
//  jsonPractice
//
//  Created by MattHew Phraxayavong on 2/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.red
        navigationItem.title = "Festivals"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: String?) -> String? {
        let path = Bundle.main.path(forResource: "festival", ofType: ".json")
        if let path = path {
            let url = URL(fileURLWithPath: path)
            
        }
        return path
    }


}

