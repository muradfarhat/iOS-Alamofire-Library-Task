//
//  ViewController.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import UIKit

#warning("TODOO: Code review")
class UsersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { // UsersViewController

    @IBOutlet weak var tableView: UITableView!
    var usersViewModel: UsersTableViewModel = UsersTableViewModel() // UsersViewModel class name
    // Parameter name viewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        usersViewModel.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.usersViewModel.numOfUsers()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? UserTableViewCell
        let user = usersViewModel.getCellForRow(cellIndex: indexPath.row)
        
        let cellVM = UserTableCellViewModel(userData: user)
        cell?.setCellData(cellData: cellVM)
        return cell ?? UITableViewCell()
    }
    
}

