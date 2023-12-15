//
//  TLButton.swift
//  ToDoList
//
//  Created by Aldiyar Saken on 15.12.2023.
//

import SwiftUI

struct TLButton: View {
    let action: () -> Void
    
    var body: some View {
        Button{
            
        } label: {
            Image(systemName: "arrow.right")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
                .shadow(color: .blue.opacity(0.6), radius: 5, x: 0, y: 0)
            }    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(){
            
        }
    }
}
