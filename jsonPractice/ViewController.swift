//
//  ViewController.swift
//  jsonPractice
//
//  Created by MattHew Phraxayavong on 2/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let cellID = "cellId"
    let names = [
        "Matt", "Mike", "Mitch"
    ]
//    let network = 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        view.backgroundColor = UIColor.red
        navigationItem.title = "Festivals"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        getFestival()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
        
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        let name = self.names[indexPath.row]
        cells.textLabel?.text = "Test"
        
        
        return cells
    }
    //        return path
}




