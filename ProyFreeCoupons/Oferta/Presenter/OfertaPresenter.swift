//
//  OfertaPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import UIKit

class OfertaPresenter {
    var nameDistrito: String?
    weak var view: OfertaViewProtocol?
    var interactor: OfertaInteractorProtocol?
    var router: OfertaRouterProtocol?
    var ofertasArray: [OfertaEntity] = []
    var ofertasFinal: [OfertaEntity] = []
    var ofertasBackUp: [OfertaEntity] = []
}

extension OfertaPresenter: OfertaPresenterInPut {
    func entregarOfertas(_ ofertas: [OfertaEntity]) {
        ofertasArray = ofertas
        ofertasFinal = ofertasArray.filter({$0.distrito == distrito})
        ofertasBackUp = ofertasFinal
    }
}

extension OfertaPresenter: OfertaPresenterOutPut {
    
    func pedirOfertas() {
        interactor?.conseguirOfertas()
    }

    var distrito: String {
        nameDistrito ?? ""
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
    
    func oferFilter(_ text: String) {
        var oferArrayFiltered: [OfertaEntity] = []
            ofertasFinal.forEach({ value in
                if value.categoria.lowercased().contains(text.lowercased()) ||
                    value.tienda.lowercased().contains(text.lowercased()) || value.direccion.lowercased().contains(text.lowercased()){
                    oferArrayFiltered.append(value)
                }
            })
        ofertasFinal = (text.count > 0) ? oferArrayFiltered : ofertasBackUp
    }
}


