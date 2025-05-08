//
//  ChatView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 29/04/25.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    var body: some View {
        
        VStack {
            ScrollView{
                
                VStack{
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    VStack(spacing:4){
                        Text("shiva")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("messaenger")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
                
                //message
                ForEach(0 ... 15, id: \.self){ message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
                
            }
            
            //bottom
            ZStack(alignment:.trailing){
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button(action: {
                    
                }, label: {
                    Text("Send")
                        .fontWeight(.semibold)
                })
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
