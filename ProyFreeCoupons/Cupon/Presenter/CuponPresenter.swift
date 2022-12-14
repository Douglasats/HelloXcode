//
//  CuponPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import Foundation
protocol CuponPresenterProtocol {
    var userCupon: UserEntity? { get }
    var ofertaCupon: OfertaEntity? { get }
    
}

class CuponPresenter {
    var view: CuponViewProtocol?
    var router: CuponRouterProtocol?
    var user: UserEntity?
    var oferta: OfertaEntity?
    
    init(user: UserEntity?, oferta: OfertaEntity?) {
        self.user = user
        self.oferta = oferta
    }

}

extension CuponPresenter: CuponPresenterProtocol {
    var userCupon: UserEntity? {
        user
    }
    
    var ofertaCupon: OfertaEntity? {
        oferta
    }
}
