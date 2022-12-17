//
//  ListaTableViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

class ListaTableViewController: UITableViewController {

    
    var store = ["Tambo","Mas"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

    }

 
    extension ListaTableViewController: UITableViewDataSource, UITableViewDelegate{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return store.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell  {
                let tienda = store[indexPath.row]
                cell.setup(tienda: tienda)
                return cell
            } else {
                return UITableViewCell()
            }
        }
        
        
    }
    

}
