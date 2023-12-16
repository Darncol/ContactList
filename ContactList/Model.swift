//
//  Model.swift
//  ContactList
//
//  Created by Alexey Solop on 16.12.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

