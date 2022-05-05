//
//  VKResponse.swift
//  VKSwiftUI
//
//  Created by Михаил Киржнер on 05.05.2022.
//

struct VKResponse<T: Codable> {
    let response: T
}

extension VKResponse: Codable {
    enum CodingKeys: String, CodingKey {
        case response
    }
}
