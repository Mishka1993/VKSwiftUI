//
//  LoginView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 02.05.2022.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLogin: Bool
    @State private var loginText = ""
    @State private var passwordText = ""
    @State private var showingAlert = false
    
    private func checkLogin() -> Bool {
        if loginText == "Admin" && passwordText == "Admin" {
            return true
        }
        return false
    }
    
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
            buttonLogin
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
                .debug()
            Spacer()
        }
    }
}

struct VkInputLoginField: View {
    @State var loginText = ""
    
    var body: some View {
        TextField("Email или телефон", text: $loginText)
            .textFieldStyle(.roundedBorder)
            .ignoresSafeArea(.keyboard)
        
    }
}

struct VkInputPasswordField: View {
    @State var passwordText = ""
    
    var body: some View {
        TextField("Пароль", text: $passwordText)
            .textFieldStyle(.roundedBorder)
            .ignoresSafeArea(.keyboard)
    }
}

extension LoginView  {
    var buttonLogin: some View {
        Button {
            if checkLogin() {
                isLogin = true
            } else {
                showingAlert = true
            }
        } label: {
            Text("Войти")
                .font(.headline)
                .bold()
        }
        .buttonStyle(VkButtonStyle())
        .alert(isPresented: $showingAlert) {
                     Alert(title: Text("Error message"), message: Text("Login or password incorrect"),
                           dismissButton: .default(Text("Ok!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLogin: .constant(true))
    }
}
