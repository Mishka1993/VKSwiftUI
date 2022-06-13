//
//  FriendDetailView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct FriendDetailView: View {
    var friend: Friend
    @State private var scale : CGFloat = 1.0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                userAvatar
                userNickName
                
                UserGallery(friend: friend)
                Spacer()
            }
            .padding()
            .navigationTitle(friend.fullName)
        }
    }
}
extension FriendDetailView {
    var userAvatar: some View {
        AsyncImage(url: friend.photoUrl) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 200 * scale,height: 200 * scale)
        .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
    }
    var userNickName: some View {
        Text(friend.nickName ?? "-")
            .foregroundColor(.gray)
            .font(.headline)
    }
}

private struct UserGallery: View {
    var friend: Friend
    @EnvironmentObject var viewModel: FriendModelView
    
    private let items = 1...5
    private let columns = [
        GridItem(.adaptive(minimum: 100), spacing: 15)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 15) {
            ForEach (items, id: \.self) { i in
                Image("post_\(i)")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}
struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: friendDemoData.items.first!)
    }
}
