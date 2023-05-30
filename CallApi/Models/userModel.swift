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
    
    struct UserAddress: Codable {
        var street: String
        var suite: String
        var city: String
        var zipCode: String
        var geo: UserGeo
        
        struct UserGeo: Codable {
            var lat: String
            var lng: String
//            var lat: Double
//            var lng: Double
//
//            enum CodingKeys: String, CodingKey {
//                case lat, lng
//            }
//            
//            init(from decoder: Decoder) throws {
//                let container = try decoder.container(keyedBy: CodingKeys.self)
//                lat = try container.decode(Double.self, forKey: .lat)
//                lng = try container.decode(Double.self, forKey: .lng)
//
//            }
        }
        
        enum CodingKeys: String, CodingKey {
            case street
            case suite
            case city
            case zipCode = "zipcode"
            case geo
        }
    }
    
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
