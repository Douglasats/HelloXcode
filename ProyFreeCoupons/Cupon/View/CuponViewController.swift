//
//  CuponViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

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
    @IBOutlet weak var finalizarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func finalizarButton(_ sender: Any) {
        presenter?.finalizar()
    }
    
    private func setup() {
        navigationController?.isNavigationBarHidden = true
        cuponTitleLabel.numberOfLines = 0
        tiendaLabel.numberOfLines = 0
        finalizarButton.round()
        finalizarButton.shine()
        nroCuponLabel.text = presenter?.numCupon
        let dateFormatter = DateFormatter()
        dateFormatter.setLocalizedDateFormatFromTemplate("ddMMyy hh:mm")
        let date = Date()
        fechaLabel.numberOfLines = 0
        fechaLabel.text = dateFormatter.string(from: date)
        if let name = presenter?.userCupon?.name, let apellido = presenter?.userCupon?.apellido {
            cuponTitleLabel.text = "Felicidades \(name) \(apellido)!!!"
        }
        if let tienda = presenter?.ofertaCupon?.tienda, let distrito = presenter?.ofertaCupon?.distrito , let direccion = presenter?.ofertaCupon?.direccion{
            tiendaLabel.text = "\(tienda) - \(distrito) - \(direccion)"
        }
        if let dni = presenter?.userCupon?.dni {
            dniLabel.text = dni
        }
        if let valor = presenter?.ofertaCupon?.valor, let categoria = presenter?.ofertaCupon?.categoria {
            descripcionLabel.numberOfLines = 0
            descripcionLabel.text = "\(valor)% dto. en \(categoria)"
        }
        if let imgCat = presenter?.ofertaCupon?.imgCat {
            categoriaImage.image = UIImage(named: imgCat)
            qrImage.image = UIImage(named: "\(imgCat)Qr")
        }
    }
}
    
