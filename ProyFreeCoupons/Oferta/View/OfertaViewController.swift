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
    
    
    var codigoDistrito: Int?
    var tituloDistrito: String?
    var usuario: String?
    /*var ofertasDistrito:[Oferta] = []
    var backupOfertas: [Oferta] = []
    
    var tiendas = [Tienda]()
    var ofertas = [Oferta]()*/
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var titleDistritoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDistritoLabel.text = tituloDistrito
        /*tableView.dataSource = self
         tableView.delegate = self*/
        
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycellTable")
    }
}

extension OfertaViewController: OfertaViewProtocol {
    func obtenerOfertas(_ oferta: [OfertaEntity]) {
        <#code#>
    }
}
/*
extension ListaViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tiendas.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let tiendas = tiendas
        return tiendas[section].ofertas.count
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let tiendas = tiendas
        return tiendas[section].nameTienda
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tiendas[indexPath.section].ofertas[indexPath.row].value
        let categoria = tiendas[indexPath.section].ofertas[indexPath.row].categoria
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "mycellTable", for: indexPath) as? MyCustomTableViewCell else {
            return UITableViewCell()
        }
        cell.descripcionLabel.text = "Descuento del \(model) en \(categoria)"
        cell.myIconImage.image = UIImage(named: categoria)
        
        return cell
    }
}
    
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
