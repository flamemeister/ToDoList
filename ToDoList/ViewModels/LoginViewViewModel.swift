//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import Foundation

class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    init() {
        
    }
}
