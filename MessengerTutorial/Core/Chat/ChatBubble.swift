//
//  ChatBubble.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 02/05/25.
//

import SwiftUI

struct ChatBubble: Shape {
    let isFromCurrentUser:Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [
            .topLeft,
            .topRight,
            isFromCurrentUser ? .bottomRight : .bottomLeft
        ],
        cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubble(isFromCurrentUser: true)
}
