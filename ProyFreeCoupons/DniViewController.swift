//
//  DniViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 28/11/22.
//

import UIKit

class DniViewController: UIViewController {

    @IBAction func ObtenerOferta(_ sender: UIButton) {
        performSegue(withIdentifier: "obtenerQr", sender: nil)
    }
    
    
    @IBAction func RegresarLista(_ sender: UIButton) {
        performSegue(withIdentifier: "dniRegresaLista", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
