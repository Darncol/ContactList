//
//  DetailTableViewController.swift
//  ContactList
//
//  Created by Alexey Solop on 16.12.2023.
//

import UIKit

final class DetailTableViewController: UITableViewController {
    var persons: [Person]!
    
    override func numberOfSections(in tableView: UITableView) -> Int {
         persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            return createCell(
                for: "phoneCell",
                image: "phone",
                text: person.phone,
                indexPath: indexPath
            )
        } else {
            return createCell(
                for: "emailCell",
                image: "tray",
                text: person.email,
                indexPath: indexPath
            )
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
