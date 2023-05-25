//
//  TableCellVM.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import Foundation

class CellViewModel {
    private var id: Int
    private var name: String
    private var userName: String
    private var email: String
    
    init(userData: UserModel) {
        self.id = userData.id
        self.name = userData.name
        self.userName = userData.username
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
