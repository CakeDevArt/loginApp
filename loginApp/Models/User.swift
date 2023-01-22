//
//  User.swift
//  loginApp
//
//  Created by Daniel on 21.01.2023.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(userName: "User", password: "Password", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let avatar: String
    let aboutOfUser: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getPerson() -> Person {
        Person(name: "Artem",
               surname: "Kuniaev",
               age: 26,
               avatar: "Photo",
               aboutOfUser: """
Hey! My name is Kunyaev Artem. I was born in a small town in the Smolensk region, in the city of Vyazma. He graduated from school 9 classes and began to study at a local college. But due to family circumstances, I had to move to the Tula region, to the small town of Efremov. This is where I live to this day. Recently, I wanted to change my life and fulfill my dream of being a programmer. Now I'm walking towards my dream slowly but surely.
""",
               job: Company.getInfoOfCompany()
        )
    }
    
    struct Company {
        let nameCompany: String
        let position: String
        
        static func getInfoOfCompany() -> Company {
            Company(nameCompany: "Wildberries", position: "Branch manager")
        }
    }
}










