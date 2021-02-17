//
//  Model.swift
//  ContactsList
//
//  Created by Nikita Zharinov on 16/02/2021.
//

import Foundation

struct Person {
    var firstName: String
    var surName: String
    var mail: String
    var phone: String
}
    
class DataManager {
    var names = [
        "Bruce", "John", "Steven", "Aaron", "Tim",
        "Alan", "Sharon", "Ted", "Carl", "Nicola"
    ]
    var surNames = [
        "Butler", "Smith", "Black", "Robertson", "Murfy",
        "Williams", "Isaacson", "Jankin", "Penyworth", "Dow"
    ]
    var mails = [
        "aaa.aaa@mail.ru", "bbb.bbb@mail.ru",
        "ccc.ccc@mail.ru", "ddd.ddd@mail.ru",
        "eee.eee@mail.ru", "fff.fff@mail.ru",
        "ggg.ggg@mail.ru", "hhh.hhh@mail.ru",
        "iii.iii@mail.ru", "kkk.kkk@mail.ru"
    ]
    var phones = [
        "11111111", "22222222", "33333333", "44444444",
        "55555555", "66666666", "77777777", "99999999",
        "88888888", "10203040"
    ]
}

extension Person {
    static func listOfPersons() -> [Person]{
        var uniqueListPersons: [Person] = []
        let initialContactDetails = DataManager()
        
        while uniqueListPersons.count < DataManager().names.count {
            let nextPerson = Person(
                firstName: initialContactDetails.names.remove(
                    at: Int.random(in: 0...initialContactDetails.names.count-1)
                ),
                surName: initialContactDetails.surNames.remove(
                    at: Int.random(in: 0...initialContactDetails.surNames.count-1)
                ),
                mail: initialContactDetails.mails.remove(
                    at: Int.random(in: 0...initialContactDetails.mails.count-1)
                ),
                phone: initialContactDetails.phones.remove(
                    at: Int.random(in: 0...initialContactDetails.phones.count-1)
                )
            )
            uniqueListPersons.append(nextPerson)
        }
        return uniqueListPersons
    }
}


