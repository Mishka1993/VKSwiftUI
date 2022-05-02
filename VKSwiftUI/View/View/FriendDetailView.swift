//
//  FriendDetailView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct FriendDetailView: View {
    var friend: Friend
    
    var body: some View {
        VStack(alignment: .center) {
            userAvatar
            userNickName
            
            UserGallery()
            Spacer()
        }
        .padding()
        .navigationTitle(friend.fullName)
    }
}
extension FriendDetailView {
    var userAvatar: some View {
        Image("User_Avatar")
            .resizable()
            .frame(width: 200, height: 200)
            .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
    }
    var userNickName: some View {
        Text(friend.nickName ?? "-")
            .foregroundColor(.gray)
            .font(.headline)
    }
}

private struct UserGallery: View {

     private let items = 1...5
     private let columns = [
         GridItem(.adaptive(minimum: 100), spacing: 15)
     ]

     var body: some View {
         ScrollView {
             LazyVGrid(columns: columns, spacing: 15) {
                 ForEach (items, id: \.self) { i in
                     Image("post_\(i)")
                         .resizable()
                         .scaledToFit()
                 }
             }
         }
     }
 }
struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: friendDemoData.items.first!)
    }
}
