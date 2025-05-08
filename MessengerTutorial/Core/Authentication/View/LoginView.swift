//
//  LoginView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 25/04/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
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
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
    
                
                Button(action: {
                    
                }, label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .foregroundStyle(.red)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Login")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                })
                .padding(.vertical)
                
                HStack{
                    VStack{
                        Divider()
                    }
                    Text("or")
                    VStack{
                        Divider()
                    }
                }
                .padding(.horizontal, 20)
                
                HStack{
                    Image(systemName: "apple.logo")
                        .foregroundStyle(Color(.systemBlue))
                    
                    Text("Continue with facebook")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                
                Spacer()
                Divider()
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing:3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.vertical)

            }
        }
    }
}

#Preview {
    LoginView()
}
