//
//  FriendListView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct FriendListView: View {
    @ObservedObject var viewModel: FriendModelView
    init(viewModel: FriendModelView) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink(destination: FriendDetailView(friend: friend).environmentObject(viewModel)) {
                UserCellView(friend: friend)
            }
        }
        .listStyle(PlainListStyle())
        .onAppear {
            viewModel.fetch()
        }
        .navigationTitle("Друзья")
    }
}

struct FriendListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = FriendModelView()
        NavigationView {
            FriendListView(viewModel: viewModel)
        }
    }
}
