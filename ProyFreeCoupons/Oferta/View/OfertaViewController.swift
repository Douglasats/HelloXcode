//
//  ListaViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

protocol OfertaViewProtocol {
    func obtenerOfertas(_ oferta: [OfertaEntity])
}

class OfertaViewController: UIViewController {

    var presenter: OfertaPresenterProtocol?
    var ofertasArray: [OfertaEntity] = []
    var ofertasFinal: [OfertaEntity] = []
    
    /*var ofertasDistrito:[Oferta] = []
    var backupOfertas: [Oferta] = []
    
    var tiendas = [Tienda]()
    var ofertas = [Oferta]()*/
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var titleDistritoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
         //tableView.delegate = self*/
        
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycellTable")
        presenter?.pedirOfertas()
        ofertasFinal = ofertasArray.filter({$0.distrito == presenter?.distrito})
        //tableView.reloadData()
    }
}

extension OfertaViewController: OfertaViewProtocol {
    func obtenerOfertas(_ oferta: [OfertaEntity]) {
        ofertasArray = oferta
        tableView.reloadData()
    }
}

extension OfertaViewController: UITableViewDataSource{
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ofertasFinal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mycellTable", for: indexPath) as? MyCustomTableViewCell else {
            return UITableViewCell()
        }
        cell.myIconImage.image = UIImage(named: ofertasFinal[indexPath.row].imgCat)
        return cell
    }
}
    
/*
extension ListaViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let tienda = tiendas[indexPath.row]
            guard let dniViewController = storyboard?.instantiateViewController(withIdentifier: "DniViewController") as? DniViewController else {
                return
            }

            let nav = UINavigationController(rootViewController: dniViewController)
            present(nav, animated: true)
        }
}
*/
