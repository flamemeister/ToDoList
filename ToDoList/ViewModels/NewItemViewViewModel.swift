//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import Foundation

class NewItemViewViewModel: ObservableObject{
    @Published var title = ""
    @Published var dueDate = Date() 
    init(){
        
    }
    func save(){
        
    }
}
