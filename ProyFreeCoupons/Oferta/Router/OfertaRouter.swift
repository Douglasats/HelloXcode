//
//  OfertaRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

class OfertaRouter {
    unowned let presenter: OfertaPresenterOutPut?
    weak var view: UIViewController?
    
    required init(presenter: OfertaPresenterOutPut?) {
        self.presenter = presenter
    }
}

extension OfertaRouter: OfertaRouterProtocol {
    func obtenerDetalle(_ oferta: OfertaEntity) {
        let userViewController = UserConfigurator.make(oferta)
        view?.navigationController?.pushViewController(userViewController, animated: true)
    }
}

