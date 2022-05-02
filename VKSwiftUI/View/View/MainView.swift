//
//  MainView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {

             TabView {
                 NavigationView {
                     FriendListView(friendList: friendDemoData)
                 }
                 .tabItem {
                     Image(systemName: "person.2.fill")
                     Text("Друзья")
                 }

                 NavigationView {
                     GroupListView(groupList: groupDemoData)
                 }
                 .tabItem {
                     Image(systemName: "rectangle.stack.person.crop")
                     Text("Группы")
                 }

                 NavigationView {
                     NewsFeedView()
                 }
                 .tabItem {
                     Image(systemName: "rectangle.3.offgrid.bubble.left")
                     Text("Лента")
                 }
             }
             .navigationBarBackButtonHidden(true)
         }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
