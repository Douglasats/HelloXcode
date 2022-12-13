//
//  OfertaRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

protocol OfertaRouterProtocol {
    func obtenerDetalle(_ oferta: OfertaEntity)
}

class OfertaRouter {
    let presenter: OfertaPresenterProtocol?
    var view: UIViewController?
    
    required init(presenter: OfertaPresenterProtocol?) {
        self.presenter = presenter
    }
}

extension OfertaRouter: OfertaRouterProtocol {
    func obtenerDetalle(_ oferta: OfertaEntity) {
        let userViewController = UserConfigurator.make(oferta)
        view?.show(userViewController, sender: nil)
    }
}

