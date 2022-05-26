//
//  VKSwiftUIApp.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 25.04.2022.
//

import SwiftUI

@main
struct VKSwiftUIApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    @State var isLogin: Bool = true
    
    init() {
        configureUiView()
    }
    var body: some Scene {
        WindowGroup {
            if isLogin {
                MainView()
            } else {
                LoginFromWebView(isLogin: $isLogin)
                //LoginView(isLogin: $isLogin)
            }
        }
    }
    private func configureUiView(){
        let appearance = UINavigationBarAppearance()
        let navColor = Color("Color")
        
        appearance.backgroundColor = UIColor(navColor)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().barTintColor = UIColor(navColor)
        UINavigationBar.appearance().backgroundColor = UIColor(navColor)
        UINavigationBar.appearance().tintColor = .white
        
        UITableView.appearance().backgroundColor = UIColor.clear
    }
}
