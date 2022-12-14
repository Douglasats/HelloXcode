//
//  UserViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

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
        navigationItem.title = "Formulario"
        ofertaImage.image = UIImage(named: (presenter?.detailEntity.imgCat)!)
        ofertaLabel.text = "\(presenter!.detailEntity.categoria) (\(presenter!.detailEntity.valor)% dto.)"
        tiendaLabel.text = presenter?.detailEntity.tienda
        direccionLabel.text = presenter?.detailEntity.distrito
    }
    
    @IBAction func canjearButton(_ sender: Any) {
        let user = UserEntity(name: nameTextField.text!,
                              apellido: apellidoTextField.text!,
                              email: emailTextField.text!,
                              cel: celularTextField.text!,
                              dni: dniTextField.text!)
        presenter?.obtenerUser(user)
    }
}

