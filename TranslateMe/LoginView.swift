//
//  LoginView.swift
//  TranslateMe
//
//  Created by Semen Kolesnykov on 3/16/25.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(AuthManager.self) var authManager 
    
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
            
            // Email + password fields
            VStack {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
            }
            .textFieldStyle(.roundedBorder)
            .textInputAutocapitalization(.never)
            .padding(40)
            
            
            HStack {
                Button("Sign Up") {
                    print("Sign up user: \(email), \(password)")
                    
                    
                    authManager.signUp(email: email, password: password)
                    
                }
                
                .buttonStyle(.borderedProminent)
                
                Button("Login") {
                    print("Login user: \(email), \(password)")
                    
                    
                    authManager.signIn(email: email, password: password)
                    
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    LoginView()
        .environment(AuthManager()) ent
}
