//
//  UserConfigurator.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

class UserConfigurator {
    static func make(_ oferta: OfertaEntity) -> UIViewController{
        
        let presenter = UserPresenter(detail: oferta)
        
        let myStoryboard = UIStoryboard(name: "ST02", bundle: nil)
        
        let view = myStoryboard.instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
        let router = UserRouter(presenter: presenter)
        
        presenter.router = router
        view.presenter = presenter
        router.view = view
        
        return view
    }
}
