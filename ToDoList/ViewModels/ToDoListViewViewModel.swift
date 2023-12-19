//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    /// Delete ToDOListItem
    /// - Parameter id: Item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
