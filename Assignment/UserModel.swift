//
//  UserModel.swift
//  Assignment
//
//  Created by Thapliyal, Abhilasha on 27/05/22.
//

import Foundation
struct UserModel: Codable {
    let data: MemberInfo?
    let error: String?
}

struct MemberInfo: Codable {
    let id: Int?
    let email: String?
    let first_name: String?
    let last_name: String?
    let avatar: String?
}

struct Support: Codable {
    let url: String?
    let text: String?
}
