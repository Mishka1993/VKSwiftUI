//
//  GroupCellView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 28.04.2022.
//

import SwiftUI

struct GroupCellView: View {
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
        Text("Apple User Group")
            .font(.system(size: 18))
            .bold()
            .lineLimit(1)
    }
    
    var groupDescription: some View {
        Text("People who use Apple technologies have joined together in user groups all around the world. Hundreds of groups offer members the chance to become friends with other Apple product users, get questions answered and have a lot of fun. Groups are for everyone from first-time computer users to experts—from every profession, background and age. Want technology to do more for you? Join the club. Find a user group near you.")
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            .lineLimit(3)
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellView()
    }
}
