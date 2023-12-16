//
//  Services.swift
//  ContactList
//
//  Created by Alexey Solop on 16.12.2023.
//

final class DataStore {
    static func getPersons() -> [Person] {
        var names = [
            "Alex",
            "Maria",
            "Ivan",
            "Olga",
            "Sergey",
            "Anna",
            "Dmitry",
            "Elena",
            "Nikolay",
            "Tatiana"
        ]
        
        var surnames = [
            "Ivanov",
            "Petrova",
            "Sidorov",
            "Kuznetsova",
            "Smirnov",
            "Volkova",
            "Orlov",
            "Fedorova",
            "Pavlov",
            "Romanova"
        ]
        
        var emails = [
            "alex@mail.com",
            "maria123@yandex.ru",
            "ivan.sidorov@gmail.com",
            "olga.k@mail.ru",
            "sergey_smirnov@outlook.com",
            "anna.volkova@yahoo.com",
            "dmitry.orlov@icloud.com",
            "elena_fed@gmail.com",
            "nikolay.pavlov@mail.ru",
            "tatiana.romanova@yandex.ru"
        ]
        
        var phoneNumbers = [
            "+71234567890",
            "+72345678901",
            "+73456789012",
            "+74567890123",
            "+75678901234",
            "+76789012345",
            "+77890123456",
            "+78901234567",
            "+79012345678",
            "+70123456789"
        ]
        
        var persons: [Person] = []
        
        for _ in 0..<10 {
            let person = Person(
                name: getInfo(from: &names),
                surname: getInfo(from: &surnames),
                email: getInfo(from: &emails),
                phone: getInfo(from: &phoneNumbers)
            )
            persons.append(person)
        }
        
        return persons
    }
    
   static private func getInfo(from array: inout [String]) -> String {
        array.remove(at: Int.random(in: 0..<array.count))
    }
}
