//
//  DistritoViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 8/12/22.
//

import UIKit
import Alamofire

class DistritoViewController: UIViewController {
    
    var presenter: DistritoPresenterOutPut?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Distritos"
        collectionView.dataSource = self
        collectionView.delegate = self
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

extension DistritoViewController : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter != nil ? presenter!.distritosCount : 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as? MyCustomCollectionViewCell else {return UICollectionViewCell()}
        if let distrito = presenter?.distritosArray[indexPath.row] {
            cell.setup(distrito: distrito)
        }
        return cell
    }
}

extension DistritoViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.pedirOfertaDistrito(indexPath.row)
    }
}

