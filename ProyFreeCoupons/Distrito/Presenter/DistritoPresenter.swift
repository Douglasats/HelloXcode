//
//  DistritoPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

protocol DistritoPresenterProtocol {
    func pedirDistritos()
    func entregarDistritos(_ distrito: [DistritoEntity])

}

class DistritoPresenter {
    var view: DistritoViewProtocol?
    var router: DistritoRouterProtocol?
    var interactor: DistritoInteractorProtocol?
}

extension DistritoPresenter: DistritoPresenterProtocol {

    func pedirDistritos() {
        interactor?.conseguirDistritos()
        print("presenter pide a interactor")
    }
    
    func entregarDistritos(_ distrito: [DistritoEntity]) {
        view?.obtenerDistritos(distrito)
        print("PRESENTER")
    }

}

