//
//  RegisterView.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack {
                ZStack{
                }
            }
                VStack{
                   Text("Sign up")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .kerning(1.9)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack(alignment: .leading, spacing: 8){
                        Text("Name")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        TextField("Enter your name", text: $name)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 10)
                        Text("Email")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        TextField("Enter your email", text: $email)
                            .autocapitalization(.none)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                        Text("Password")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        SecureField("Enter your password", text: $password)
                            .autocapitalization(.none)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                        TLButton(){
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 200)
                        }
                        
                }
                .padding()
                VStack{
                    Text("Don't have account?")
                    NavigationLink("Sign up!", destination: RegisterView())
                }
                .padding(.top, 1)
            }
        }
    }
    
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}


