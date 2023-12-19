//
//  ProfileView.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Name: ")
                            .bold()
                        Text("Aldiyar Saken")
                    }
                    .padding()
                    HStack{
                        Text("Email ")
                            .bold()
                        Text("aldiyar.saken123@gmail.com")
                    }
                    .padding()
                    HStack{
                        Text("Member Since: ")
                            .bold()
                        Text("19th December, 2023")
                    }
                    .padding()
                }
                    .padding()
                    
                    Button("Log Out"){
                        viewModel.logOut()
                    }
                    .tint(.red)
                    .padding()
                    Spacer()
                }
                .navigationTitle("Profile")
            }
        }
    }
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }

