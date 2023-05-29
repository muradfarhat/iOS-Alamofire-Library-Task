//
//  TableViewModel.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import Foundation
import Alamofire

class UsersTableViewModel {
    
    private var userData: [UserModel] = []
    
    func getData(completionHandler: @escaping () -> Void) {
        // Handle failure
        // Handle strong self
        AF.request("https://jsonplaceholder.typicode.com/users").responseDecodable(of: [UserModel].self) { [weak self] response in
//            guard let responseData = response.value else {
//                completionHandler()
//                return
//            }
//            self?.userData = responseData
//            completionHandler()
            
            switch response.result {
                case .success(let responseData):
                    self?.userData = responseData
                    completionHandler()
                case .failure(let error):
                    print("Error :\(error)")
                    completionHandler()
            }
        }
    }
    
    func numOfUsers() -> Int {
        return self.userData.count
    }
    
    func getCellForRow(cellIndex: Int) -> UserModel {
        return self.userData[cellIndex]
    }
}
