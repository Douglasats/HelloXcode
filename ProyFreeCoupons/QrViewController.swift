//
//  QrViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 28/11/22.
//

import UIKit

class QrViewController: UIViewController {

    @IBAction func RegresarLista(_ sender: UIButton) {
        performSegue(withIdentifier: "qrRegresaLista", sender: nil)
    }
    
    
    @IBAction func listaOferta(_ sender: UIButton) {
        navigationController?.popViewController( animated: true)
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
