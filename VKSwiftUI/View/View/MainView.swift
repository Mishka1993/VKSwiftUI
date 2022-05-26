//
//  MainView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct MainView: View {
    
    private let friendViewModel = FriendModelView()
    private let groupViewModel = GroupModelView()
    
    var body: some View {
        
        UITabBarWrapper([
                   TabBarElement(tabBarElementItem: .init(title: "Друзья", systemImageName: "person.2.fill")) {
                       NavigationView {
                           FriendListView(viewModel: friendViewModel)
                       }
                   },
                   TabBarElement(tabBarElementItem: .init(title: "Группы", systemImageName: "rectangle.stack.person.crop")) {
                       NavigationView {
                           GroupListView(viewModel: groupViewModel)
                       }
                   },
                   TabBarElement(tabBarElementItem: .init(title: "Лента", systemImageName: "rectangle.3.offgrid.bubble.left")) {
                       NavigationView {
                           NewsFeedView()
                       }
                   },

               ])
                   .navigationBarBackButtonHidden(true)
                   .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
