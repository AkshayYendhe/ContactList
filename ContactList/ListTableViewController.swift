//
//  ListTableViewController.swift
//  ContactList
//
//  Created by Akshay Yendhe on 05/01/23.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    let contacts:[[String]] = [
    ["Elon Musk", "+1-201-3141-5926"],
    ["Bill Gates", "+1-202-5358-9793"],
    ["Tim Cook", "+1-203-2384-6264"],
    ["Richard Branson", "+1-204-3383-2795"],
    ["Jeff Bezos", "+1-205-0288-4197"],
    ["Warren Buffet", "+1-206-1693-9937"],
    ["The Zuck", "+1-207-5105-8209"],
    ["Carlos Slim", "+1-208-7494-4592"],
    ["Bill Gates", "+1-209-3078-1640"],
    ["Larry Page", "+1-210-6286-2089"],
    ["Harold Finch", "+1-211-9862-8034"],
    ["Sergey Brin", "+1-212-8253-4211"],
    ["Jack Ma", "+1-213-7067-9821"],
    ["Steve Ballmer", "+1-214-4808-6513"],
    ["Phil Knight", "+1-215-2823-0664"],
    ["Paul Allen", "+1-216-7093-8446"],
    ["Woz", "+1-217-0955-0582"]
    ]

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let contact = contacts[indexPath.row]
        //print(contact)
        cell.textLabel?.text = "\(contact[0]) \(contact[1])"
            
      
    return cell
    }

}
