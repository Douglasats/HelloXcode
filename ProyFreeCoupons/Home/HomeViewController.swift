//
//  PrimerViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 28/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var empezarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        empezarButton.round()
    }

    @IBAction func irDistritoButton(_ sender: Any) {
        navigationController?.isNavigationBarHidden = false
        let distritoViewController = DistritoConfigurator.makeList()
        navigationController?.pushViewController(distritoViewController, animated: true)
    }
}
