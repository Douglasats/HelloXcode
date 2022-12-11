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
    }
    
    func setup(distrito: DistritoEntity) {
        distritoLabel.text = distrito.nameDistrito
    }
    
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    func jump() {
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(translationX: 10, y: 0)
        }) {(completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.transform = .identity
            })
        }
    }

}
