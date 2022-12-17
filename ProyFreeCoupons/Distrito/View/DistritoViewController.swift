//
//  DistritoViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 8/12/22.
//

import UIKit
import Alamofire

class DistritoViewController: UIViewController {
    
    weak var presenter: DistritoPresenterOutPut?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Distritos"
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "MyCustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "mycell")
        presenter?.pedirDistritos()
    }

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

