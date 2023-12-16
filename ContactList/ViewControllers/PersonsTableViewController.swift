//
//  PersonsTableViewController.swift
//  ContactList
//
//  Created by Alexey Solop on 16.12.2023.
//

import UIKit

final class PersonsTableViewController: UITableViewController {
    
    var persons: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Back"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.person = persons[tableView.indexPathForSelectedRow!.row]
    }
}

// MARK: - Table view data source
extension PersonsTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FullName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}
