//
//  UIButton.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 18.12.2023.
//

import SwiftUI

struct UIButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct UIButton_Previews: PreviewProvider {
    static var previews: some View {
        UIButton(title: "Value", background: .pink){    
        }
    }
}
