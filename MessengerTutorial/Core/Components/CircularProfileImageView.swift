//
//  CircularProfileImageView.swift
//  MessengerTutorial
//
//  Created by Shiv Prakash Gupta on 29/04/25.
//

import SwiftUI

enum ProfileImageSize{
    case xxSmall
    case xSmall
    case Small
    case Medium
    case Large
    case xLarge
    
    var dimention:CGFloat{
        switch self {
        case .xxSmall: return 28
        case .xSmall: return 32
        case .Small: return 40
        case .Medium: return 56
        case .Large: return 64
        case .xLarge: return 80
        }
    }
}

struct CircularProfileImageView: View {
    let user:User
    let size:ProfileImageSize
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimention, height: size.dimention)
                .clipShape(Circle())
        }else{
            Image(systemName: "persion.circle.fill")
                .resizable()
                .frame(width: size.dimention, height: size.dimention)
                .foregroundColor(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER, size: .Medium)
}
