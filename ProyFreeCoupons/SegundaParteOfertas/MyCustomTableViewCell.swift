//
//  MyCustomTableViewCell.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 9/12/22.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myIconImage: UIImageView!
    @IBOutlet weak var descripcionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
