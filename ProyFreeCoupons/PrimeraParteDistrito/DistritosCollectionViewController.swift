//
//  DistritosCollectionViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 3/12/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class DistritosCollectionViewController: UICollectionViewController {

    var distritos = [Distrito(cod_dis: 1, nom_dis: "San Martin de Porres"),
                    Distrito(cod_dis: 2, nom_dis: "Los Olivos"),
                    Distrito(cod_dis: 3, nom_dis: "San Miguel"),
                     Distrito(cod_dis:4, nom_dis: "San Juan de Miraflores")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return distritos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "distrito", for: indexPath) as? CustomCollectionViewCell else {return UICollectionViewCell()}
        let distrito = distritos[indexPath.row]
        cell.setup(distrito: distrito)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        let distrito = distritos[indexPath.row]
        let myStoryboard = UIStoryboard(name: "ST02", bundle: nil)
        guard let listaViewController = myStoryboard.instantiateViewController(withIdentifier: "ListaViewController") as? ListaViewController else {return}
        listaViewController.codigoDistrito = distrito.cod_dis
        navigationController?.pushViewController(listaViewController, animated: true)
    }
}
