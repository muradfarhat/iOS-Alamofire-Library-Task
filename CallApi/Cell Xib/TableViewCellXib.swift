//
//  TableViewCellXib.swift
//  CallApi
//
//  Created by Murad Farhat on 30/05/2023.
//

import UIKit

class UserTableViewCellXib: UITableViewCell {

    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var userID: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCellData(cellData: UserTableCellViewModel) {
        self.userID.text = String(cellData.getID())
        self.userName.text = cellData.getUserName()
        self.name.text = cellData.getName()
        self.userEmail.text = cellData.getEmail()
    }
    
}
