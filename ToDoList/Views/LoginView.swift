//
//  LoginView.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 10.12.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        
        NavigationView{
            VStack {
                GeometryReader{proxy -> AnyView in
                    let height = proxy.frame(in: .global).height

                    return AnyView(
                        ZStack{
                            Circle()
                                .fill(Color.gray)
                                .offset(x: getRect().width / 2, y : -height / 1.5)
                            Circle()
                                .fill(Color.gray)
                                .offset(x: -getRect().width / 1.5, y : -height / 1.5)
                            Circle()
                                .fill(Color.blue)
                                .offset(y: -height / 1.9)
                                .rotationEffect(.init(degrees: 25))
                        }
                    )
                }
                
                
                VStack{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                   Text("Sign in")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .kerning(1.9)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack(alignment: .leading, spacing: 8){
                        Text("Email")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        TextField("Enter your email", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.black)
                            .padding(.top, 5)
                        Text("Password")
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.top, 10)
                        SecureField("Enter your password", text: $viewModel.password)
                            .autocorrectionDisabled()
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
