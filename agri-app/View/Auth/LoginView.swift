//
//  LoginView.swift
//  agri-app
//
//  Created by Bipin Giri on 21/03/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
      
    var body: some View {
        Image("login")
            .resizable()
            .scaledToFit()
        VStack(spacing: 40){
            Text("Login").font(.title).fontWeight(.semibold)
                .fontDesign(.serif)
                .foregroundStyle(.green)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                Spacer()
                TextField("Username", text: $username)
                    .padding()
            }
            .padding(.horizontal) // Add padding horizontally
            .background(Color.white) // Ensure the border rounds nicely
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.lightGray), lineWidth: 2)
            )
            
            HStack {
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                Spacer()
                TextField("Password", text: $password)
                    .padding()
            }
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(.lightGray), lineWidth: 2)
            )
            
            Button(action: {
                // Action to perform when the button is tapped
            }) {
                Text("Login")
                    .font(.headline)
                    .padding()
                  
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity) .background(Color.green)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
        }.padding()
    }
}

#Preview {
    LoginView()
}
