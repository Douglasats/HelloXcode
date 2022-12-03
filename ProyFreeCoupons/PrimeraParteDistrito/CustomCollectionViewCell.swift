//
//  CustomCollectionViewCell.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 3/12/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var distritoLabel: UILabel!
    
    func setup(distrito: Distrito){
        distritoLabel.text = distrito.nom_dis
    }
}
