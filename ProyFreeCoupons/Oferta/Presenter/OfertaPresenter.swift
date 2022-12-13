//
//  OfertaPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

protocol OfertaPresenterProtocol {
    func pedirOfertas()
    func entregarOfertas(_ ofertas: [OfertaEntity])
    var distrito: String {get}
    var ofertaCount: Int { get }
    var ofertaFinal: [OfertaEntity] { get }
    func getDetail(_ index: Int)
}

class OfertaPresenter {
    
    var nameDistrito: String?
    var view: OfertaViewProtocol?
    var interactor: OfertaInteractorProtocol?
    var router: OfertaRouterProtocol?
    var ofertasArray: [OfertaEntity] = []
    var ofertasFinal: [OfertaEntity] = []
}

extension OfertaPresenter: OfertaPresenterProtocol {
 
    var distrito: String {
        nameDistrito ?? ""
    }
    
    func pedirOfertas() {
        interactor?.conseguirOfertas()
    }
    
    func entregarOfertas(_ ofertas: [OfertaEntity]) {
        ofertasArray = ofertas
        ofertasFinal = ofertasArray.filter({$0.distrito == distrito})
    }

    var ofertaFinal: [OfertaEntity] {
        ofertasFinal
    }
    
    var ofertaCount: Int {
        ofertasFinal.count
    }
    
    func getDetail(_ index: Int){
        router?.obtenerDetalle(ofertasFinal[index])
    }
}

