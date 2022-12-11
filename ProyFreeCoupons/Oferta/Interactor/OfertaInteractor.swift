//
//  OfertaInteractor.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

protocol OfertaInteractorProtocol {
    func conseguirOfertas()
}

class OfertaInteractor {
    var presenter: OfertaPresenterProtocol?
    var api: 
}

extension OfertaInteractor: OfertaInteractorProtocol {
    func conseguirOfertas() {
        presenter?.entregarOfertas(oferta)
    }
}
