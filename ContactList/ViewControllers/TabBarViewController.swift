//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Alexey Solop on 16.12.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        sendData()
    }
    
    private func sendData() {
        let persons = Person.getPersons()
        
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                
                for controller in navigationVC.viewControllers {
                    if let personsVC = controller as? PersonsTableViewController {
                        personsVC.persons = persons
                    } else if let detailVC = controller as? DetailTableViewController {
                        detailVC.persons = persons
                    }
                }
            }
        }
    }
}
