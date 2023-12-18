//
//  NewItemView.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    var body: some View {
        VStack{
            Text("New item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 70)
            Form{
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                DatePicker("Due date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                UIButton(title: "Save", background: .pink){
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert){
                Alert(title: Text("Error"),
                      message: Text("Please fill in all fields and select due date correctly"))
            }
        }
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: Binding(get:{
            return true
        } , set: {_ in
            
        }))
    }
}
