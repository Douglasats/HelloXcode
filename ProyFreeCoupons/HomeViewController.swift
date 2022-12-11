//
//  PrimerViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 28/11/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Inicie")
    }

    @IBAction func irDistritoButton(_ sender: Any) {
        
        let distritoViewController = DistritoConfigurator.makeList()
        //guard let distritoViewController = storyboard?.instantiateViewController(withIdentifier: "DistritoViewController") as? DistritoViewController else {return}
        
        //navigationController?.pushViewController(distritoViewController, animated: true)
        show(distritoViewController, sender: nil)
    }
}
