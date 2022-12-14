//
//  CuponRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import UIKit

class CuponRouter {
    unowned let presenter : CuponPresenterProtocol?
    weak var view: UIViewController?
    
    init(presenter: CuponPresenterProtocol?) {
        self.presenter = presenter
    }
}
extension CuponRouter : CuponRouterProtocol{
    func goHome() {
        view?.navigationController?.popToRootViewController(animated: true)
    }
}
