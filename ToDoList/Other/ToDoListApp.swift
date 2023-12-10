//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
