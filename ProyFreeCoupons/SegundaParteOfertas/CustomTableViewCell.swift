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
    @IBOutlet weak var tiendaLabel: UILabel!
    @IBOutlet weak var cateLabel: UILabel!
    
    
    
    func setup(tienda: String){
        //ofertaLabel.text = ""
        //iconImage.image = UIImage(named: categoria)
        tiendaLabel.text = tienda
        //cateLabel.text = nomCategoria
    }
}
