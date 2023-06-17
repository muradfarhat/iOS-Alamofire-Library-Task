//
//  TableViewCellXib.swift
//  CallApi
//
//  Created by Murad Farhat on 30/05/2023.
//

import UIKit

class UserTableViewCellXib: UITableViewCell {

    @IBOutlet private weak var userEmail: UILabel!
    @IBOutlet private weak var userName: UILabel!
    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var userID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCellData(cellData: UserTableCellViewModel) {
        self.userID.text = String(cellData.id)
        self.userName.text = cellData.userName
        self.name.text = cellData.name
        self.userEmail.text = cellData.email
    }
    
}
