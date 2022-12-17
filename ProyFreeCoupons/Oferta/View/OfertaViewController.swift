//
//  ListaViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

class OfertaViewController: UIViewController {
    
    var presenter: OfertaPresenterOutPut?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var titleDistritoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "OfertaCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "myCellOferta")
        navigationItem.title = "Ofertas"
        titleDistritoLabel.text = presenter?.distrito
        presenter?.pedirOfertas()
        searchTextField.placeholder = "Buscar por categoria o tienda"
        //searchTextField.addTarget(self, action: //#selector(searchTextField(_:)), for: .editingChanged)
    }
    
    @IBAction func searchTextField(_ textField: UITextField) {
        if textField == searchTextField{
                    let text = textField.text ?? ""
                    presenter?.oferFilter(text)
                    tableView.reloadData()
                }
    }
    
//    @objc func searchTextField(_ textField: UITextField){
//        if textField == searchTextField{
//            let text = textField.text ?? ""
//            presenter?.oferFilter(text)
//            tableView.reloadData()
//        }
//    }
}

extension OfertaViewController: UITableViewDataSource{
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.ofertaCount ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCellOferta", for: indexPath) as? OfertaCustomTableViewCell else {
            return UITableViewCell()
        }
        if let oferta = presenter?.ofertaFinal[indexPath.row] {
            cell.setup(oferta)
        }
        return cell
    }
}

extension OfertaViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            presenter?.getDetail(indexPath.row)
        }
}

