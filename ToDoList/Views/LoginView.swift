//
//  LoginView.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        
        VStack {
            GeometryReader{proxy -> AnyView in
                let height = proxy.frame(in: .global).height
                return AnyView{
                    ZStack{
                        
                    }
                }
            }
            
            VStack{
                //header
               Text("Sign in")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .kerning(1.9)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                //login form
                VStack(alignment: .leading, spacing: 8){
                    Text("Email")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                    TextField("Enter your email", text: $email)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 5)
                    
                    Text("Password")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.top, 10)
                    SecureField("Enter your password", text: $password)
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.black)
                        .padding(.top, 5)
                    
                    Button{
                        
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .clipShape(Circle())
                            .shadow(color: .blue.opacity(0.6), radius: 5, x: 0, y: 0)
                        }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                    }
                    Divider()
                    
            }
        }
            
            //create account
            VStack{
                Text("Don't have account?")
                Button("Sign up!"){
                    
                }
            }
            .padding(.bottom, 50)
            
        }
        
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
