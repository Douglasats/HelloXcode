//
//  DistritoRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import UIKit

class DistritoRouter{
    
    unowned let presenter: DistritoPresenterOutPut?
    weak var view: UIViewController?
    
    required init(presenter: DistritoPresenterOutPut?) {
        self.presenter = presenter
    }
}

extension DistritoRouter: DistritoRouterProtocol {
    func obtenerOfertaDistrito(_ distrito: String) {
        let ofertaViewController = OfertaConfigurator.makeList(distrito)
        view?.navigationController?.pushViewController(ofertaViewController, animated: true)
        
    }
}

