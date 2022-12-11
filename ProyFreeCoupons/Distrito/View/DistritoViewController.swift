//
//  DistritoViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 8/12/22.
//

import UIKit
import Alamofire

protocol DistritoViewProtocol{
    func obtenerDistritos(_ distrito: [DistritoEntity])
}

class DistritoViewController: UIViewController {
    
    var presenter: DistritoPresenterProtocol?
    var distritosArray: [DistritoEntity] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        //collectionView.delegate = self
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
        presenter?.pedirDistritos()
    }
    
    /*private func getData(){
        let kBaseUrl = "https://demo0607784.mockable.io/"
        let kStatusOk = 200...299
        let url = "\(kBaseUrl)distritos"
        
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: [Distrito].self){response in
            
            if let distrito = response.value{
                print(distrito)
                
            } else {
                print(response.error?.responseCode ?? "No error")
            }
            self.distritos = response.value ?? []
            self.collectionView.reloadData()
            
            print(self.distritos)
        }
    }*/

}

extension DistritoViewController: DistritoViewProtocol {

    func obtenerDistritos(_ distrito: [DistritoEntity]) {
        distritosArray = distrito
        collectionView.reloadData()
        print("Llamando al presenter")
    }
}

extension DistritoViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return distritosArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell else {return UICollectionViewCell()}
        cell.round()
        let distrito = distritosArray[indexPath.row]
        cell.setup(distrito: distrito)
        return cell
    }
}

/*
extension DistritoViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let distrito = distritos[indexPath.row]
        let myStoryboard = UIStoryboard(name: "ST02", bundle: nil)
        guard let listaViewController = myStoryboard.instantiateViewController(withIdentifier: "ListaViewController") as? ListaViewController else {return}
        listaViewController.tituloDistrito = distrito.nameDistrito
        listaViewController.tiendas = distrito.tiendas
        navigationController?.pushViewController(listaViewController, animated: true)
    }
}
*/
