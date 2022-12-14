//
//  CuponConfigurator.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

class CuponConfigurator {
    static func make(_ user: UserEntity,_ oferta: OfertaEntity) -> UIViewController {
        
        let presenter = CuponPresenter( user: user, oferta: oferta)
        let myStoryboard = UIStoryboard(name: "ST02", bundle: nil)
        
        let view = myStoryboard.instantiateViewController(withIdentifier: "CuponViewController") as! CuponViewController
        let router = CuponRouter(presenter: presenter)
        
        presenter.router = router
        view.presenter = presenter
        router.view = view
        
        return view
    }
}
