//
//  UserCellView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 28.04.2022.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
        UserCell()
    }
}

struct UserCell: View {
    
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

private extension UserCell {
    
    var userAvatar: some View {
        Image("User_Avatar")
            .resizable()
            .frame(width: 100, height: 100)
            .modifier(CircleShadow(shadowColor: .orange, shadowRadius: 3))
    }
    
    var userFio: some View {
        Text("Mikhail Kirzhner")
            .font(.title)
            .lineLimit(1)
    }
    
    var userLogin: some View {
        Text("mikhail_K@")
            .font(.body)
            .foregroundColor(.gray)
            .lineLimit(1)
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
