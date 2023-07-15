//
//  Person.swift
//  ContactLisr
//
//  Created by Кирилл on 09.07.2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
//    static func getPerson() -> [Person] {
//
//
//        var persons: [Person] = []
//        var total = 0
//
//        for _ in DataStore().names {
//
//            let person = Person(
//                name: filterPerson(DataStore().names)[total],
//                surname: filterPerson(DataStore().surnames)[total],
//                phone: filterPerson(DataStore().phones)[total],
//                email: filterPerson(DataStore().emails)[total]
//            )
//            persons.append(person)
//            total += 1
//        }
//        return persons
//    }
    
extension Person {
    
    static func getContsctList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surname = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surname.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surname[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
