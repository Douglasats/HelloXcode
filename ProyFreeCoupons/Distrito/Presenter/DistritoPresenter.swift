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
    
    //pedir distrito para ir a otra vista
    func pedirOfertaDistrito(_ distrito: String)
}

class DistritoPresenter {
    var view: DistritoViewProtocol?
    var router: DistritoRouterProtocol?
    var interactor: DistritoInteractorProtocol?
}

extension DistritoPresenter: DistritoPresenterProtocol {
    func pedirOfertaDistrito(_ distrito: String) {
        router?.obtenerOfertaDistrito(distrito)
    }
    
    func pedirDistritos() {
        interactor?.conseguirDistritos()
    }
    
    func entregarDistritos(_ distrito: [DistritoEntity]) {
        view?.obtenerDistritos(distrito)
    }

}

