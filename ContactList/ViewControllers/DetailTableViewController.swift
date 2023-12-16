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
            let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            var content = phoneCell.defaultContentConfiguration()
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
            phoneCell.contentConfiguration = content
            
            return phoneCell
        } else {
            let emailCell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            var content = emailCell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "tray")
            emailCell.contentConfiguration = content
            
            return emailCell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
