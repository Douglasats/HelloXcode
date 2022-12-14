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
        ofertaLabel.numberOfLines = 0

    }
    
    func setup(_ oferta: OfertaEntity){
        ofertaImage.image = UIImage(named: oferta.imgCat)
        ofertaLabel.text = "\(oferta.categoria) -> \(oferta.valor)% de dto."
        tiendaLabel.text = oferta.tienda
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
