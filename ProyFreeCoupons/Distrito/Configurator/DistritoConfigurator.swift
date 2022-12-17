//
//  DistritoConfigurator.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import UIKit

class DistritoConfigurator {
    
    static func makeList() -> UIViewController{
        
        let presenter = DistritoPresenter()
        let api = DistritoMockAPI()
        let interactor = DistritoInteractor(presenter: presenter, api: api)
        
        let myStoryboard = UIStoryboard(name: "DistritoViewController", bundle: nil)
        let view = myStoryboard.instantiateViewController(withIdentifier: "DistritoViewController") as! DistritoViewController
        let router = DistritoRouter(presenter: presenter)
        presenter.router = router
        presenter.interactor = interactor
        router.view = view
        view.presenter = presenter
        
        return view
    }
    
}
