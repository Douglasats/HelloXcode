//
//  OfertaCustomTableViewCell.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 12/12/22.
//

import UIKit

class OfertaCustomTableViewCell: UITableViewCell {


    @IBOutlet weak var tiendaLabel: UILabel!
    @IBOutlet weak var ofertaImage: UIImageView!
    @IBOutlet weak var ofertaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ofertaLabel.numberOfLines = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
