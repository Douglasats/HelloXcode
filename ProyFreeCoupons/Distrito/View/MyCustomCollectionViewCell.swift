//
//  MyCustomCollectionViewCell.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 8/12/22.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var distritoLabel: UILabel!
    var douglas: UIButton!
  override func awakeFromNib() {
        super.awakeFromNib()
   }
    
    func setup(distrito: DistritoEntity) {
        distritoLabel.text = distrito.nameDistrito
        round()
    }
    
    func round() {
        self.layer.cornerRadius = bounds.height/2
        clipsToBounds = true
    }

}
