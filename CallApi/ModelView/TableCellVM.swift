//
//  TableCellVM.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import Foundation

#warning("TODOO: Code review")
class UserTableCellViewModel { // UserTableCellViewModel
    private(set) var id: Int
    private(set) var name: String
    private(set) var userName: String
    private(set) var email: String
    
    init(userData: UserModel) {
        self.id = userData.id
        self.name = userData.name
        self.userName = userData.userName
        self.email = userData.email
    }
    
    func getID() -> Int {
        return self.id
    }

    func getName() -> String {
        return self.name
    }

    func getUserName() -> String {
        return self.userName
    }

    func getEmail() -> String {
        return self.email
    }
}
