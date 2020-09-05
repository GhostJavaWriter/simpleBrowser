//
//  ViewController.swift
//  Project4
//
//  Created by Баир Надцалов on 02.09.2020.
//  Copyright © 2020 Баир Надцалов. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com", "google.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //git
    // count of cells for tableViewController
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    // add sites
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    // action when cell is clicked
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "Site") as? SiteViewController {
            vc.websites = websites
            vc.indexPath = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}

