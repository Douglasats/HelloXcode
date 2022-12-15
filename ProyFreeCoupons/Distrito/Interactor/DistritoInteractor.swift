//
//  DistritoInteractor.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

class DistritoInteractor {
    var presenter: DistritoPresenterInPut?
    var api: RemoteRepository?
    
    required init(presenter: DistritoPresenterInPut, api: RemoteRepository) {
        self.presenter = presenter
        self.api = api
    }
}

extension DistritoInteractor: DistritoInteractorProtocol {
    func conseguirDistritos() {
        if let distritos = api?.fetchDistritos(){
            let distritoEntity = DistritoEntity.make(distritos)
            presenter?.entregarDistritos(distritoEntity)
        }
    }
}
