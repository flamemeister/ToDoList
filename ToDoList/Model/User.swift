//
//  User.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
