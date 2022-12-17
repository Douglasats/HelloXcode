//
//  CuponPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import Foundation

class CuponPresenter {
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
    
    var numCupon: String? {
    String(Int.random(in: 0..<1000000))
    }
    
    func finalizar(){
        router?.goHome()
    }
}

