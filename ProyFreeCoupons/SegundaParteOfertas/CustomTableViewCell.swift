//
//  CustomTableViewCell.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 29/11/22.
//

import UIKit


class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var ofertaLabel: UILabel!

    @IBOutlet weak var iconImage: UIImageView!
    
    func setup(oferta: Oferta){
        ofertaLabel.text = oferta.name
        iconImage.image = UIImage(named: oferta.image)
    }
}
