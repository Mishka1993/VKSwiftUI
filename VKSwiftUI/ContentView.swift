//
//  ContentView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 25.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VkLogo()
                .padding(.top, 150)
            VStack {
                VkInputLoginField()
                VkInputPasswordField()
                    .padding(.top)
            }
            .padding(.top, 50)
            .padding([.leading, .horizontal])
            VkButtonLogin()
                .padding(.top, 50)
            Spacer()
        }
        .background(Color("Color"))
        .ignoresSafeArea()
    }
}

struct VkLogo: View {
    var body: some View {
        HStack {
            Spacer()
            Image("VK_logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 150.0, alignment: .center)
            Spacer()
        }
    }
}

struct VkInputLoginField: View {
    @State var loginText = ""
    
    var body: some View {
        TextField("Email или телефон", text: $loginText)
            .textFieldStyle(.roundedBorder)
            
    }
}

struct VkInputPasswordField: View {
    @State var passwordText = ""
    
    var body: some View {
        TextField("Пароль", text: $passwordText)
            .textFieldStyle(.roundedBorder)
    }
}

struct VkButtonLogin: View {
    var body: some View {
        Button {
            print("Test")
        } label: {
            Text("Войти")
                .font(.headline)
                .bold()
        }
        .frame(width: 200, alignment: .center)
        .padding(.all, 8)
        .background(Color(red: 0.155, green: 0.528, blue: 0.96))
        .foregroundColor(Color.white)
        .clipShape(Capsule())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
