//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    @IBOutlet var tableView1: UITableView!
    
    let myArray = ["Abyssinian", "American Shorthair", "Bengal", "Birman", "British Shorthair",
    "Burmese", "Exotic Shorthair", "Maine Coon", "Norwegian Forest", "Persian", "Ragdoll"]
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "protoTypeCell", for: indexPath)
        let itemTitle = myArray[indexPath.row]
        cell.textLabel?.text = itemTitle // its ok to force unwrap a UI element
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
