//
//  ListaViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

class ListaViewController: UIViewController {
    
    var ofertas = [
        Oferta(id: 1,name: "Chips -10%",image: "catIcon1" ),
        Oferta(id: 2, name: "Cervezas -30%",image: "catIcon2"),
        Oferta(id: 3, name: "Gaseosas -30%",image: "catIcon3"),
        Oferta(id: 4, name: "Lacteos -90%",image: "catIcon4"),
        Oferta(id: 5, name: "Bebidas Alchólicas -10%",image: "catIcon5"),
        Oferta(id: 6, name: "Pizza -25%",image: "catIcon6"),
        Oferta(id: 7, name: "Pollo a la Brasa -10%",image: "catIcon7"),
        Oferta(id: 1,name: "Chips -10%",image: "catIcon1" ),
        Oferta(id: 2, name: "Cervezas -30%",image: "catIcon2"),
        Oferta(id: 3, name: "Gaseosas -30%",image: "catIcon3"),
        Oferta(id: 4, name: "Lacteos -90%",image: "catIcon4"),
        Oferta(id: 5, name: "Bebidas Alchólicas -10%",image: "catIcon5"),
        Oferta(id: 6, name: "Pizza -25%",image: "catIcon6"),
        Oferta(id: 7, name: "Pollo a la Brasa -10%",image: "catIcon7"),
        Oferta(id: 1,name: "Chips -10%",image: "catIcon1" ),
        Oferta(id: 2, name: "Cervezas -30%",image: "catIcon2"),
        Oferta(id: 3, name: "Gaseosas -30%",image: "catIcon3"),
        Oferta(id: 4, name: "Lacteos -90%",image: "catIcon4"),
        Oferta(id: 5, name: "Bebidas Alchólicas -10%",image: "catIcon5"),
        Oferta(id: 6, name: "Pizza -25%",image: "catIcon6"),
        Oferta(id: 7, name: "Pollo a la Brasa -10%",image: "catIcon7")
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

    extension ListaViewController: UITableViewDataSource, UITableViewDelegate{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ofertas.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell  {
                let oferta = ofertas[indexPath.row]
                cell.setup(oferta: oferta)
                return cell
            } else {
                return UITableViewCell()
            }
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let ofertas = ofertas[indexPath.row]
            
            guard let dniViewController = storyboard?.instantiateViewController(withIdentifier: "DniViewController") as? DniViewController else {
                return
            }
            
            dniViewController.name = ofertas.name
            dniViewController.image = ofertas.image
            
            let nav = UINavigationController(rootViewController: dniViewController)
            present(nav, animated: true)
        }
    }
