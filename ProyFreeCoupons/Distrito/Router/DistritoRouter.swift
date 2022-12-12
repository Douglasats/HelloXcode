//
//  DistritoRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import UIKit
protocol DistritoRouterProtocol{
    //solicitar distrito para ir a otra vista
    func obtenerOfertaDistrito(_ distrito: String)
}

class DistritoRouter{
    
    let presenter: DistritoPresenterProtocol?
    var view: UIViewController?
    
    required init(presenter: DistritoPresenterProtocol?) {
        self.presenter = presenter
    }
}

extension DistritoRouter: DistritoRouterProtocol {
    func obtenerOfertaDistrito(_ distrito: String) {
        
        let ofertaViewController = OfertaConfigurator.makeList(distrito)
        
        view?.show(ofertaViewController, sender: nil)
    }
}

