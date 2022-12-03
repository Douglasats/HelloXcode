//
//  ListaViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

class ListaViewController: UIViewController {
    
    var tiendas = [
        Tienda(cod_tie: 1, nom_tie: "Tambo", cod_dis: 1),
        Tienda(cod_tie: 2, nom_tie: "Mas", cod_dis: 3),
        Tienda(cod_tie: 3, nom_tie: "Tambo", cod_dis: 4),
        Tienda(cod_tie: 4, nom_tie: "Don Lucho", cod_dis: 2)
    ]
    
    var categorias = [
        Categoria(cod_cat: 1, nom_cat: "Cheaps", img_cat: "catIcon1"),
        Categoria(cod_cat: 2, nom_cat: "Bear", img_cat: "catIcon2"),
        Categoria(cod_cat: 3, nom_cat: "Soda", img_cat: "catIcon3"),
        Categoria(cod_cat: 4, nom_cat: "Milk", img_cat: "catIcon4")
    ]
    
    var ofertas = [
        Oferta(cod_ofe: 1, des_ofe: "-10%", cod_cat: 1, cod_tie: 1),
        Oferta(cod_ofe: 2, des_ofe: "-25%", cod_cat: 3, cod_tie: 2),
        Oferta(cod_ofe: 3, des_ofe: "-25%", cod_cat: 2, cod_tie: 3),
        Oferta(cod_ofe: 4, des_ofe: "-25%", cod_cat: 1, cod_tie: 1),
        Oferta(cod_ofe: 5, des_ofe: "-30%", cod_cat: 3, cod_tie: 3),
        Oferta(cod_ofe: 6, des_ofe: "-20%", cod_cat: 1, cod_tie: 4),
        Oferta(cod_ofe: 7, des_ofe: "-10%", cod_cat: 3, cod_tie: 5),
        Oferta(cod_ofe: 8, des_ofe: "-15%", cod_cat: 4, cod_tie: 2),
        Oferta(cod_ofe: 9, des_ofe: "-5%", cod_cat: 4, cod_tie: 2)
    ]
    
    
    var codigoDistrito: Int?
    
    var ofertasDistrito:[Oferta] = []
    
    func filtrarDistrito(){
        ofertas.forEach{myofer in
        tiendas.forEach{mytienda in
            if myofer.cod_tie == mytienda.cod_tie && mytienda.cod_dis == codigoDistrito{
                    ofertasDistrito.append(myofer)
                    tableView.reloadData()
                }
            }
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        filtrarDistrito()        
    }
}

    extension ListaViewController: UITableViewDataSource, UITableViewDelegate{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ofertasDistrito.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell  {
                let oferta = ofertasDistrito[indexPath.row]
                let categoria = categorias[oferta.cod_cat-1].img_cat
                cell.setup(oferta: oferta, categoria: categoria)
                return cell
            } else {
                return UITableViewCell()
            }
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let ofertas = ofertasDistrito[indexPath.row]
            
            guard let dniViewController = storyboard?.instantiateViewController(withIdentifier: "DniViewController") as? DniViewController else {
                return
            }
            
            dniViewController.name = ofertas.des_ofe
            
            let nav = UINavigationController(rootViewController: dniViewController)
            present(nav, animated: true)
        }
    }
