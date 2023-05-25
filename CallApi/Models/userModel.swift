//
//  userModel.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import Foundation

struct UserModel: Decodable {
    var id: Int
    var name: String
    var username: String
    var email: String
}
