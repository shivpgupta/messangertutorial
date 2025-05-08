//
//  ChatMessageCell.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 29/04/25.
//

import SwiftUI

struct ChatMessageCell: View {
    let isFromCurrentUser:Bool
    var body: some View {
        HStack{
            if !isFromCurrentUser{
                
                Spacer()
                
                Text("This is a text message for user sfksfjj s;fjs;fjs;fj;f s;fjks;fjsf ")
                    .font(.subheadline)
                    .padding()
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(width: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            }else{
                
                HStack(alignment:.bottom, spacing: 8){
                    CircularProfileImageView(user: User.MOCK_USER, size: .Small)
                    Text("This is a text message for user")
                        .font(.subheadline)
                        .padding()
                        .background(Color(.systemGray4))
                        .foregroundColor(.black)
                        .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                        .frame(width: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                    
                    Spacer()
                }

            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: false)
}
