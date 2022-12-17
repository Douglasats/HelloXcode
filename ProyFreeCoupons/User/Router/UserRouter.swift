//
//  UserRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

class UserRouter {
    unowned let presenter : UserPresenterProtocol?
    weak var view: UIViewController?
    
    required init(presenter: UserPresenterProtocol?) {
        self.presenter = presenter
    }
}

extension UserRouter: UserRouterProtocol {
    func irCupon(_ user: UserEntity,_ oferta: OfertaEntity) {
        let cuponViewController = CuponConfigurator.make(user, oferta)
        view?.navigationController?.pushViewController(cuponViewController, animated: true)
    }
}
