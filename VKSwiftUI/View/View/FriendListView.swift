//
//  FriendListView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct FriendListView: View {
    var friendList = FriendItems(items: [])

         var body: some View {
             List(friendList.items) { friend in
                 NavigationLink(destination: FriendDetailView(friend: friend)) {
                     UserCellView(friend: friend)
                 }
             }
             .listStyle(PlainListStyle())
             .navigationTitle("Друзья")
         }
}

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendListView(friendList: friendDemoData)
    }
}
