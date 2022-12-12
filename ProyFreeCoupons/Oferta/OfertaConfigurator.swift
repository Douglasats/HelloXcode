//
//  OfertaConfigurator.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import UIKit

class OfertaConfigurator {
    static func makeList(_ distrito:String) -> UIViewController{

        let presenter = OfertaPresenter()
        let api = DistritoMockAPI()
        
        let interactor = OfertaInteractor(presenter: presenter, api: api)
        
        let myStoryboard = UIStoryboard(name: "ST02", bundle: nil)
        let view = myStoryboard.instantiateViewController(withIdentifier: "OfertaViewController") as! OfertaViewController
        
        presenter.interactor = interactor
        presenter.view = view
        presenter.nameDistrito = distrito
        
        view.presenter = presenter
        
        return view
    }
}