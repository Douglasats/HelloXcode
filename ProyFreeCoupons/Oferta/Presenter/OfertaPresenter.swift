//
//  OfertaPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

protocol OfertaPresenterProtocol {
    func pedirOfertas()
    func entregarOfertas(_ oferta: [OfertaEntity])
    
    var distrito: String {get}
}

class OfertaPresenter {
    var nameDistrito: String?
    var view: OfertaViewProtocol?
    var interactor: OfertaInteractorProtocol?
    
    
}

extension OfertaPresenter: OfertaPresenterProtocol {
    var distrito: String {
        nameDistrito ?? ""
    }
    
    func pedirOfertas() {
        interactor?.conseguirOfertas()
    }
    
    func entregarOfertas(_ oferta: [OfertaEntity]) {
        view?.obtenerOfertas(oferta)
    }
}

