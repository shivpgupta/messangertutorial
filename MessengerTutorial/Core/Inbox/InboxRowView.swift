//
//  InboxRowView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 26/04/25.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment:.top, spacing: 12){
            CircularProfileImageView(user: User.MOCK_USER, size: .Large)
            
            VStack(alignment:.leading, spacing: 4){
                HStack{
                    Text("shiva")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Text("Yesterday")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    Image(systemName: "chevron.right")
                }
                Text("yo yo")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
            }
        }
        .frame(height: 65)
    }
}

#Preview {
    InboxRowView()
}
