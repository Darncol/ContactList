//
//  InfoViewController.swift
//  ContactList
//
//  Created by Alexey Solop on 16.12.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    var person: Person!
    
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phone.text = person.phone
        email.text = person.email
    }
}
