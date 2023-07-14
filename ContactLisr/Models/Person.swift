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
    
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        var total = 0
        
        for _ in DataStore().names {
            
            let person = Person(
                name: filterPerson(DataStore().names)[total],
                surname: filterPerson(DataStore().surnames)[total],
                phone: filterPerson(DataStore().phones)[total],
                email: filterPerson(DataStore().emails)[total]
            )
            persons.append(person)
            total += 1
        }
        return persons
    }
}

private func filterPerson(_ array: [String]) -> [String] {
    var filterPersons = [String]()
    array.forEach {
        if !filterPersons.contains($0) {
            filterPersons.append($0)
        }
    }
    return filterPersons
}

