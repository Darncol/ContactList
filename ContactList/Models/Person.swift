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
    
    static func getPersons() -> [Person] {
        var persons = [Person]()
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        
        let minimalCount = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0..<minimalCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phoneNumbers[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

