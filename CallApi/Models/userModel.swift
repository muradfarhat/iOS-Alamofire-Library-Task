//
//  userModel.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import Foundation

#warning("TODOO: Code review")
struct UserModel: Codable { // Codable
    var id: Int
    var name: String
    var userName: String // userName
    var email: String
    var address: UserAddress
    var phone: String
    var website: String
    var company: UserCompany
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case userName = "username"
        case email
        case address
        case phone
        case website
        case company
    }
}


// Parsing ll address
// Lat & long as Double
struct UserCompany: Codable {
    var companyName: String
    var catchPhrase: String
    var bs: String
    
    enum CodingKeys: String, CodingKey {
        case companyName = "name"
        case catchPhrase
        case bs
    }
}

struct UserGeo: Codable {
    var lat: Double
    var lng: Double

    enum CodingKeys: String, CodingKey {
        case lat, lng
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        lat = Double(try container.decode(String.self, forKey: .lat))!
        lng = Double(try container.decode(String.self, forKey: .lng))!

    }
}

struct UserAddress: Codable {
    var street: String
    var suite: String
    var city: String
    var zipCode: String
    var geo: UserGeo
    
    
    
    enum CodingKeys: String, CodingKey {
        case street
        case suite
        case city
        case zipCode = "zipcode"
        case geo
    }
}
