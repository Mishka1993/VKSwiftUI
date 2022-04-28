//
//  View+Debug.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 28.04.2022.
//

import SwiftUI

extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}
