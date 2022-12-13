//
//  ListaViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

protocol OfertaViewProtocol {
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
        tableView.delegate = self
        tableView.register(UINib(nibName: "OfertaCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "myCellOferta")
        presenter?.pedirOfertas()
        titleDistritoLabel.text = presenter?.distrito
        //ofertasFinal = ofertasArray.filter({$0.distrito == presenter?.distrito})
        //tableView.reloadData()
    }
}
/*
extension OfertaViewController: OfertaViewProtocol {
    func obtenerOfertas(_ oferta: [OfertaEntity]) {
        ofertasArray = oferta
        tableView.reloadData()
    }
}*/

extension OfertaViewController: UITableViewDataSource{
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.ofertaCount ?? 0//ofertasFinal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCellOferta", for: indexPath) as? OfertaCustomTableViewCell else {
            return UITableViewCell()
        }
        cell.ofertaImage.image = UIImage(named: presenter?.ofertaFinal[indexPath.row].imgCat ?? "") /*ofertasFinal[indexPath.row].imgCat*/
        cell.ofertaLabel.text = "\(presenter!.ofertaFinal[indexPath.row].categoria) -> \(presenter!.ofertaFinal[indexPath.row].valor)% de dto."
        //cell.tiendaLabel.text = ofertasFinal[indexPath.row].tienda
        return cell
    }
}

extension OfertaViewController: UITableViewDelegate{
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            presenter?.getDetail(indexPath.row)
            print("Estoy haciendo click")
            /*let tienda = tiendas[indexPath.row]*/
            /*guard let dniViewController = storyboard?.instantiateViewController(withIdentifier: "DniViewController") as? DniViewController else {
                return
            }

            let nav = UINavigationController(rootViewController: dniViewController)
            present(nav, animated: true)*/
        }
}
