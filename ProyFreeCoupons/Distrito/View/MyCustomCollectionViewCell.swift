//
//  MyCustomCollectionViewCell.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 8/12/22.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var distritoLabel: UILabel!
    
  override func awakeFromNib() {
        super.awakeFromNib()
       round()
   }
    
    func setup(distrito: DistritoEntity) {
        distritoLabel.text = distrito.nameDistrito
    }
    
    func round() {
        self.layer.cornerRadius = bounds.height/2
        clipsToBounds = true
    }

}
