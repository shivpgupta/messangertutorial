//
//  RegistrationView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 26/04/25.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            VStack(spacing:12){
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your fullname", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }

            Button(action: {
                
            }, label: {
                Text("Sign Up")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 350, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            })
            .padding(.vertical)
        
            Spacer()
            Divider()
            Button(action: {
                dismiss()
            }, label: {
                HStack{
                    Text("Already have an account?")
                    Text("Sign In")
                }
                    .foregroundStyle(Color(.systemBlue))
                    .fontWeight(.semibold)
            })
            .padding(.vertical)

        }
    }
}

#Preview {
    RegistrationView()
}
