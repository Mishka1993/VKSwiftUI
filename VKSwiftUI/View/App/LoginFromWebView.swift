//
//  LoginFromWebView.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 05.05.2022.
//

import SwiftUI

struct LoginFromWebView: View {
     @Binding var isLogin: Bool
     var body: some View {
         VkWebView {
             isLogin = true
         }
     }
 }

 struct VkLoginFromWebView_Previews: PreviewProvider {
     static var previews: some View {
         LoginFromWebView(isLogin: .constant(true))
     }
 }
