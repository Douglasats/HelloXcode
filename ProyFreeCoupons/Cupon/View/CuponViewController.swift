//
//  CuponViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

protocol CuponViewProtocol {
    
}

class CuponViewController: UIViewController {
    
    var presenter : CuponPresenterProtocol?

    @IBOutlet weak var cuponTitleLabel: UILabel!
    @IBOutlet weak var qrImage: UIImageView!
    @IBOutlet weak var nroCuponLabel: UILabel!
    @IBOutlet weak var tiendaLabel: UILabel!
    @IBOutlet weak var dniLabel: UILabel!
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var descripcionLabel: UILabel!
    @IBOutlet weak var categoriaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("ddMMyy hh:mm")
        let date = Date()
        fechaLabel.numberOfLines = 0
        fechaLabel.text = dateFormatter.string(from: date)
        cuponTitleLabel.text = "Felicidades \(presenter?.userCupon?.name) \(presenter?.userCupon?.apellido)!!!"
        tiendaLabel.text = presenter?.ofertaCupon?.tienda
        dniLabel.text = presenter?.userCupon?.dni
        descripcionLabel.text = "\(presenter?.ofertaCupon?.valor)% dto. en \(presenter?.ofertaCupon?.categoria)"
        categoriaImage.image = UIImage(named: presenter?.ofertaCupon?.imgCat ?? "")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
