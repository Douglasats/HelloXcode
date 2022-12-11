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
}

class OfertaPresenter {
    
    var view: OfertaViewProtocol?
    
    
}

extension OfertaPresenter: OfertaPresenterProtocol {
    func pedirOfertas() {
        <#code#>
    }
    
    func entregarOfertas(_ oferta: [OfertaEntity]) {
        view?.obtenerOfertas(oferta)
    }
}

