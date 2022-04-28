//
//  CircleShadow.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 28.04.2022.
//

import SwiftUI

 struct CircleShadow: ViewModifier {
     let shadowColor: Color
     let shadowRadius: CGFloat

     func body(content: Content) -> some View {
         content
             .clipShape(Circle())
             .shadow(color: shadowColor, radius: shadowRadius)
             .overlay(Circle().stroke(shadowColor, lineWidth: 1))
     }
 }
