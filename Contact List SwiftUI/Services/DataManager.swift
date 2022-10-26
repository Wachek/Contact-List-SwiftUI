//
//  DataManager.swift
//  Contact List SwiftUI
//
//  Created by Вячеслав Турчак on 26.10.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
        
    let names = [
        "Ashoka", "Anakin", "Boba", "Darth", "Han",
        "Jabba", "Jar Jar", "Lando", "Leia", "Mace"
    ]
    
    let lastnames = [
        "Tano", "Skywalker", "Fett", "Vader", "Solo",
        "Hutt", "Binks", "Calrissian", "Organa", "Windu"
    ]
    
    let emails = [
        "sithlord@gmail.com", "lastjedi@gmail.com", "bountyhunter@gmail.com",
        "darkjedi@gmail.com", "princess@gmail.com", "rogueone@gmail.com",
        "general@gmail.com", "padavan@gmail.com", "senator@gmail.com",
        "iamyourfather@gmail.com"
    ]
    
    let phones = [
        "+79211112233", "+79212223344", "+79213334455", "+79214445566",
        "+79215556677", "+79216667788", "+79217778899", "+79218889900",
        "+79219990011", "+79210001122"
    ]
    
    private init() {}
    
}
