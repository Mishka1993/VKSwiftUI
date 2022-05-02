//
//  UserCellView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 28.04.2022.
//

import SwiftUI

struct UserCellView: View {
    
    var friend: Friend
    
    init(friend: Friend){
        self.friend = friend
    }
    
    var body: some View {
        HStack(spacing: 15){
            userAvatar
            VStack (alignment:.leading){
                userFio
                userLogin
            }
            Spacer()
        }
        .padding(5)
    }
}

private extension UserCellView {
    
    var userAvatar: some View {
        Image("User_Avatar")
            .resizable()
            .frame(width: 100, height: 100)
            .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
    }
    
    var userFio: some View {
        Text(friend.fullName)
            .font(.title)
            .lineLimit(1)
    }
    
    var userLogin: some View {
        Text(friend.nickName ?? "")
            .font(.body)
            .foregroundColor(.gray)
            .lineLimit(1)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView(friend: friendDemoData.items.first!)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
