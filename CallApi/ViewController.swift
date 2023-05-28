//
//  ViewController.swift
//  CallApi
//
//  Created by Murad Farhat on 25/05/2023.
//

import UIKit

#warning("TODOO: Code review")
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate { // UsersViewController

    @IBOutlet weak var tableView: UITableView!
    var tableViewModel: TableViewModel = TableViewModel() // UsersViewModel class name
    // Parameter name viewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // remove these lines use storyboard
        tableView.dataSource = self
        tableView.delegate = self
        
        tableViewModel.getData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewModel.numOfUsers()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell") as? CellView
        let user = tableViewModel.getCellForRow(cellIndex: indexPath.row)
        
        let cellVM = CellViewModel(userData: user)
        cell?.setCellData(cellData: cellVM)
        return cell ?? UITableViewCell()
    }
    
}

