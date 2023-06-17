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
        let userApi = "https://jsonplaceholder.typicode.com/users"
        
        AF.request(userApi).responseDecodable(of: [UserModel].self) { [weak self] response in
            
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


/*

if let apiData = UserDefaults.standard.object(forKey: userApi) as? Data {
            if let decodedData = try? JSONDecoder().decode([UserModel].self, from: apiData) {
                self.userData = decodedData
                print(self.userData)
            }
            completionHandler()
        } else {
            AF.request(userApi).responseDecodable(of: [UserModel].self) { [weak self] response in

                switch response.result {
                    case .success(let responseData):
                        self?.userData = responseData
                        if let encodedData = try? JSONEncoder().encode(responseData){
                            UserDefaults.standard.set(encodedData, forKey: userApi)
                        }
                        completionHandler()
                    case .failure(let error):
                        print("Error :\(error)")
                        completionHandler()
                }
            }
*/
