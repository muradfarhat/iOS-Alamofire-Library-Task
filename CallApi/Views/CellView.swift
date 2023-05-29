//
//  CellView.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import UIKit
#warning("TODOO: Code review")
// Use xib
class UserTableViewCell: UITableViewCell { // UserTableViewCell

    @IBOutlet weak var userID: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCellData(cellData: UserTableCellViewModel) {
        self.userID.text = String(cellData.getID())
        self.userName.text = cellData.getUserName()
        self.name.text = cellData.getName()
        self.email.text = cellData.getEmail()
    }
}
