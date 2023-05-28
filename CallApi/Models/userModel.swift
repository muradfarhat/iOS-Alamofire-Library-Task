//
//  userModel.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import Foundation

#warning("TODOO: Code review")
struct UserModel: Decodable { // Codable
    var id: Int
    var name: String
    var username: String // userName
    var email: String
}

// Parsing ll address
// Lat & long as Double
