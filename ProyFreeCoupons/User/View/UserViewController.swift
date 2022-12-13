//
//  UserViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit
protocol UserViewProtocol{
    
}

class UserViewController: UIViewController {
    
    var presenter: UserPresenterProtocol?

    @IBOutlet weak var ofertaImage: UIImageView!
    @IBOutlet weak var ofertaLabel: UILabel!
    @IBOutlet weak var tiendaLabel: UILabel!
    @IBOutlet weak var direccionLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var apellidoTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var celularTextField: UITextField!
    @IBOutlet weak var dniTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ofertaImage.image = UIImage(named: (presenter?.detailEntity.imgCat)!)
        ofertaLabel.text = "\(presenter!.detailEntity.categoria) (\(presenter!.detailEntity.valor)% dto.)"
        tiendaLabel.text = presenter?.detailEntity.tienda
        direccionLabel.text = presenter?.detailEntity.distrito
    }
    
    @IBAction func canjearButton(_ sender: Any) {
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
