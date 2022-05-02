//
//  GroupCellView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 28.04.2022.
//

import SwiftUI

struct GroupCellView: View {
    
    var group: Group
    
    init(group: Group) {
        self.group = group
    }
    
    var body: some View {
        HStack(alignment: .lastTextBaseline){
            groupAvatar
            VStack(alignment: .leading){
                groupName
                groupDescription
            }
            Spacer()
        }
        .padding(5)
    }
}

private extension GroupCellView {
    
    var groupAvatar: some View {
        Image("Group_Avatar")
            .resizable()
            .frame(width: 80, height: 80)
            .modifier(CircleShadow(shadowColor: .blue, shadowRadius: 5))
    }
    
    var groupName: some View {
        Text(group.name)
            .font(.system(size: 18))
            .bold()
            .lineLimit(1)
    }
    
    var groupDescription: some View {
        Text(group.description)
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
    }
}

struct GroupCellView_Previews: PreviewProvider {
     static var previews: some View {
         GroupCellView(group: groupDemoData.items.first!)
             .previewLayout(PreviewLayout.sizeThatFits)
     }
 }
