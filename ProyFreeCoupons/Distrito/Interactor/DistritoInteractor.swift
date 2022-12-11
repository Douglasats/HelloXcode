//
//  DistritoInteractor.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

protocol DistritoInteractorProtocol {
    func conseguirDistritos()
}

class DistritoInteractor {
    var presenter: DistritoPresenterProtocol?
    var api: RemoteRepository?
    
    required init(presenter: DistritoPresenterProtocol, api: RemoteRepository) {
        self.presenter = presenter
        self.api = api
    }
}

extension DistritoInteractor: DistritoInteractorProtocol {
    func conseguirDistritos() {
        print("Conseguir Distritos")
        if let distritos = api?.fetchDistritos(){
            let distritoEntity = DistritoEntity.make(distritos)
            presenter?.entregarDistritos(distritoEntity)
            print(distritoEntity)
            print("INTERACTOR")
        }
    }
}
