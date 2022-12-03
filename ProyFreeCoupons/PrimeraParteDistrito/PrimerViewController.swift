//
//  PrimerViewController.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 28/11/22.
//

import UIKit

class PrimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func irDistritoButton(_ sender: Any) {
        guard let distritoViewController = storyboard?.instantiateViewController(withIdentifier: "DistritosCollectionViewController") as? DistritosCollectionViewController else {return}
        navigationController?.pushViewController(distritoViewController, animated: true)
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
