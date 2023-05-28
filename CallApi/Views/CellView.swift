//
//  CellView.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import UIKit
#warning("TODOO: Code review")
// Use xib
class CellView: UITableViewCell { // UserTableViewCell

    @IBOutlet weak var userID: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCellData(cellData: CellViewModel) {
        self.userID.text = String(cellData.getID())
        self.userName.text = cellData.getUserName()
        self.name.text = cellData.getName()
        self.email.text = cellData.getEmail()
    }

    // No need
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
