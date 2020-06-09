//
//  Person.swift
//  ParsonPage
//
//  Created by Pavel Parshin on 09.06.2020.
//  Copyright © 2020 Pavel Parshin. All rights reserved.
//

struct Person {
    var name: String
    var lastname: String
    var phoneNumber: String
    var email: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
}

extension Person {

    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let dataManager = DataManager()
        var names = dataManager.names
        var lastnames = dataManager.lastnames
        var phoneNumbers = dataManager.phoneNumbers
        var emails = dataManager.emails
        
        for _ in names {
            let name = names.remove(at: Int.random(in: 0...names.count - 1))
            let lastname = lastnames.remove(at: Int.random(in: 0...lastnames.count - 1))
            let phoneNumber = phoneNumbers.remove(at: Int.random(in: 0...phoneNumbers.count - 1))
            let email = emails.remove(at: Int.random(in: 0...emails.count - 1))
            persons.append(Person(name: name, lastname: lastname, phoneNumber: phoneNumber, email: email))
        }
        
        return persons
    }
}
