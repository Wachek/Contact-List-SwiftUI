//
//  Person.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 26.10.2022.
//

import Foundation

struct Person: Hashable {
    
    let name: String
    let lastname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let lastnames = DataManager.shared.lastnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, lastnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                lastname: lastnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    static func getPerson() -> Person {
        
        let person = Person(
            name: DataManager.shared.names.randomElement() ?? "",
            lastname: DataManager.shared.lastnames.randomElement() ?? "",
            email: DataManager.shared.emails.randomElement() ?? "",
            phoneNumber: DataManager.shared.phones.randomElement() ?? ""
        )
        
        return person
    }
}
