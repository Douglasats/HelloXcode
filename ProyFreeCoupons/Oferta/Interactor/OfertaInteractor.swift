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
    var api: RemoteRepository?
    
    required init(presenter: OfertaPresenterProtocol? = nil, api: RemoteRepository? = nil) {
        self.presenter = presenter
        self.api = api
    }
}

extension OfertaInteractor: OfertaInteractorProtocol {
    func conseguirOfertas() {
        if let ofertas = api?.fetchOfertas(){
            let ofertaEntity = OfertaEntity.make(ofertas)
            presenter?.entregarOfertas(ofertaEntity)
        }
    }
}

