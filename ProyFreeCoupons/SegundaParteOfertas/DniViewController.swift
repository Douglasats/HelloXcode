//
//  DniViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 28/11/22.
//

import UIKit

class DniViewController: UIViewController {

    @IBOutlet weak var ofertaLabel: UILabel!
    @IBOutlet weak var ofertaImageView: UIImageView!
    
    var name:String!
    var image:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ofertaLabel.text = name
        ofertaImageView.image = UIImage(named: image)
        
    }
    
    @IBAction func ObtenerOferta(_ sender: Any){
        guard let qrViewController = storyboard?.instantiateViewController(withIdentifier: "QrViewController") as? QrViewController else {
            return
        }
            navigationController?.pushViewController(qrViewController, animated: true)
        }
    }