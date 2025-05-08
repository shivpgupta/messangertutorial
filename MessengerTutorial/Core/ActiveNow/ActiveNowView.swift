//
//  ActiveNowView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 26/04/25.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:32){
               ForEach(0 ... 10, id: \.self){ item in
                   VStack{
                       ZStack(alignment:.bottomTrailing){
                           CircularProfileImageView(user: User.MOCK_USER, size: .Large)
                           
                           ZStack{
                               Circle()
                                   .fill(.white)
                                   .frame(width: 18, height: 18)
                               Circle()
                                   .fill(Color(.systemGreen))
                                   .frame(width: 12, height: 12)
                           }
                       }
                       
                       Text("shiva")
                           .font(.subheadline)
                           .foregroundColor(.gray)
                   }
                }
            }
            .padding()
        }
        .frame(height: 100)
    }
}

#Preview {
    ActiveNowView()
}
