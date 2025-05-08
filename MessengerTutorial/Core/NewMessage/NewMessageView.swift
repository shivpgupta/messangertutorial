//
//  NewMessageView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 28/04/25.
//

import SwiftUI

struct NewMessageView: View {
    @State private var serchText = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ScrollView{
                TextField("To: ", text: $serchText)
                    .frame(height: 44)
                    .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                
                Text("CONTACTS")
                    .foregroundStyle(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0...10, id: \.self){ item in
                    VStack {
                        HStack{
                            CircularProfileImageView(user: User.MOCK_USER, size: .Small)
                            
                            Text("Shiva Gupta")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Divider()
                            .padding(.leading, 40)
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .foregroundColor(.black)
                }
        }
        }
    }
}

#Preview {
    NavigationStack{
        NewMessageView()
    }
}
