//
//  GroupListView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct GroupListView: View {
    @ObservedObject var viewModel: GroupModelView
    var groupList = GroupItems(items:[])
    
    var body: some View {
        List(groupList.items){ group in
            GroupCellView(group: group)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Группы")
    }
}

struct GroupListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = GroupModelView()
        NavigationView {
            GroupListView(viewModel: viewModel)
        }
    }
}
