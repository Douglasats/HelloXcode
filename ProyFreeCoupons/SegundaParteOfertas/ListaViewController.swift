//
//  ListaViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit

class ListaViewController: UIViewController {
    
    let tiendas = [
        Tienda(cod_tie: 1, nom_tie: "Tambo", cod_dis: 1),
        Tienda(cod_tie: 2, nom_tie: "Mas", cod_dis: 1),
        Tienda(cod_tie: 4, nom_tie: "Don Lucho", cod_dis: 1),
        Tienda(cod_tie: 6, nom_tie: "24 Horas", cod_dis: 1),
        Tienda(cod_tie: 7, nom_tie: "La 19", cod_dis: 1),
        Tienda(cod_tie: 8, nom_tie: "Don Pepe", cod_dis: 1),
        Tienda(cod_tie: 9, nom_tie: "Oxxo", cod_dis: 1),
        Tienda(cod_tie: 10, nom_tie: "July", cod_dis: 1),
        Tienda(cod_tie: 11, nom_tie: "Nandito", cod_dis: 1),
        Tienda(cod_tie: 12, nom_tie: "Menos", cod_dis: 2),
        Tienda(cod_tie: 13, nom_tie: "Rápido", cod_dis: 2),
        Tienda(cod_tie: 16, nom_tie: "Doña Nelly", cod_dis: 2),
        Tienda(cod_tie: 17, nom_tie: "Altoque", cod_dis: 2),
        Tienda(cod_tie: 18, nom_tie: "Minimarket Siempre", cod_dis: 2),
        Tienda(cod_tie: 19, nom_tie: "Lleva Ya", cod_dis: 2),
        Tienda(cod_tie: 20, nom_tie: "Dollar City", cod_dis: 2)
    ]
    
    let categorias = [
        Categoria(cod_cat: 1, nom_cat: "Cheaps", img_cat: "catIcon1"),
        Categoria(cod_cat: 2, nom_cat: "Beer", img_cat: "catIcon2"),
        Categoria(cod_cat: 3, nom_cat: "Soda", img_cat: "catIcon3"),
        Categoria(cod_cat: 4, nom_cat: "Milk", img_cat: "catIcon4"),
        Categoria(cod_cat: 5, nom_cat: "Drink's", img_cat: "catIcon5"),
        Categoria(cod_cat: 6, nom_cat: "Pizza's", img_cat: "catIcon6"),
        Categoria(cod_cat: 7, nom_cat: "Chicken's", img_cat: "catIcon7")
    ]
    
    let ofertas = [
        Oferta(cod_ofe: 1, des_ofe: "-10%", cod_cat: 1, cod_tie: 1),
        Oferta(cod_ofe: 2, des_ofe: "-25%", cod_cat: 2, cod_tie: 2),
        Oferta(cod_ofe: 3, des_ofe: "-25%", cod_cat: 3, cod_tie: 3),
        Oferta(cod_ofe: 4, des_ofe: "-25%", cod_cat: 4, cod_tie: 4),
        Oferta(cod_ofe: 5, des_ofe: "-30%", cod_cat: 5, cod_tie: 5),
        Oferta(cod_ofe: 6, des_ofe: "-20%", cod_cat: 6, cod_tie: 2),
        Oferta(cod_ofe: 7, des_ofe: "-10%", cod_cat: 7, cod_tie: 2),
        Oferta(cod_ofe: 1, des_ofe: "-10%", cod_cat: 1, cod_tie: 2),
        Oferta(cod_ofe: 2, des_ofe: "-25%", cod_cat: 2, cod_tie: 2),
        Oferta(cod_ofe: 3, des_ofe: "-25%", cod_cat: 3, cod_tie: 8),
        Oferta(cod_ofe: 4, des_ofe: "-25%", cod_cat: 4, cod_tie: 9),
        Oferta(cod_ofe: 5, des_ofe: "-30%", cod_cat: 5, cod_tie: 3),
        Oferta(cod_ofe: 6, des_ofe: "-20%", cod_cat: 6, cod_tie: 5),
        Oferta(cod_ofe: 7, des_ofe: "-10%", cod_cat: 7, cod_tie: 6),
        Oferta(cod_ofe: 1, des_ofe: "-10%", cod_cat: 1, cod_tie: 12),
        Oferta(cod_ofe: 2, des_ofe: "-25%", cod_cat: 2, cod_tie: 13),
        Oferta(cod_ofe: 3, des_ofe: "-25%", cod_cat: 3, cod_tie: 12),
        Oferta(cod_ofe: 4, des_ofe: "-25%", cod_cat: 4, cod_tie: 20),
        Oferta(cod_ofe: 5, des_ofe: "-30%", cod_cat: 5, cod_tie: 15),
        Oferta(cod_ofe: 6, des_ofe: "-20%", cod_cat: 6, cod_tie: 12),
        Oferta(cod_ofe: 7, des_ofe: "-10%", cod_cat: 7, cod_tie: 13),
        Oferta(cod_ofe: 1, des_ofe: "-10%", cod_cat: 1, cod_tie: 16),
        Oferta(cod_ofe: 2, des_ofe: "-25%", cod_cat: 2, cod_tie: 20),
        Oferta(cod_ofe: 3, des_ofe: "-25%", cod_cat: 3, cod_tie: 17),
        Oferta(cod_ofe: 4, des_ofe: "-25%", cod_cat: 4, cod_tie: 15),
        Oferta(cod_ofe: 5, des_ofe: "-30%", cod_cat: 5, cod_tie: 13),
        Oferta(cod_ofe: 6, des_ofe: "-20%", cod_cat: 6, cod_tie: 11),
        Oferta(cod_ofe: 7, des_ofe: "-10%", cod_cat: 7, cod_tie: 10)
    ]
    
    var codigoDistrito: Int?
    var tituloDistrito: String?
    var usuario: String?
    var ofertasDistrito:[Oferta] = []
    var backupOfertas: [Oferta] = []
    

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var titleDistritoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleDistritoLabel.text = tituloDistrito
        tableView.dataSource = self
        tableView.delegate = self
        filtrarDistrito()
        backupOfertas = ofertasDistrito
        searchTextField.addTarget(self, action: #selector(searchTextField(_:)), for: .editingChanged)
    }
}


extension ListaViewController: UITableViewDataSource, UITableViewDelegate{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ofertasDistrito.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as? CustomTableViewCell  {
                let oferta = ofertasDistrito[indexPath.row]
                
                var categoria: String!
                var nomCategoria: String!
                categorias.forEach{cate in if cate.cod_cat == oferta.cod_cat{
                    categoria = cate.img_cat
                    nomCategoria = cate.nom_cat
                }}
                
                var tienda: String!
                tiendas.forEach{tiend in
                    if tiend.cod_tie == oferta.cod_tie{
                            tienda = tiend.nom_tie
                        }
                    }
                cell.setup(oferta: oferta, categoria: categoria, nomCategoria: nomCategoria, tienda: tienda)
                return cell
            } else {
                return UITableViewCell()
            }
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let oferta = ofertasDistrito[indexPath.row]
            guard let dniViewController = storyboard?.instantiateViewController(withIdentifier: "DniViewController") as? DniViewController else {
                return
            }
            let imagen = categorias[oferta.cod_cat-1].img_cat
            dniViewController.name = oferta.des_ofe
            dniViewController.image = imagen
            let nav = UINavigationController(rootViewController: dniViewController)
            present(nav, animated: true)
        }
    }


//Filtrar por distrito (inicio)
extension ListaViewController {
    func filtrarDistrito(){
        ofertas.forEach({myofer in
            tiendas.forEach({mytienda in
                if myofer.cod_tie == mytienda.cod_tie && mytienda.cod_dis == codigoDistrito{
                    ofertasDistrito.append(myofer)
                    tableView.reloadData()
                }
            })
        })
    }
}

//Filtrar por categoria o tienda
extension ListaViewController{
    @objc func searchTextField(_ textField: UITextField){
        var ofertasFiltered: [Oferta] = []
        if textField == searchTextField{
            let text = textField.text ?? ""
            ofertasDistrito.forEach({ myofer in
                    categorias.forEach({ mycate in
                        if myofer.cod_cat == mycate.cod_cat {
                            if mycate.nom_cat.lowercased().contains(text.lowercased()){
                                ofertasFiltered.append(myofer)
                            }
                        }
                    })
            })
        ofertasDistrito = (text.count > 0) ? ofertasFiltered : backupOfertas
        tableView.reloadData()
         }
     }
}
