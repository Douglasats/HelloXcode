//
//  DistritoPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

class DistritoPresenter {
    var router: DistritoRouterProtocol?
    var interactor: DistritoInteractorProtocol?
    var distritos: [DistritoEntity] = []
}

extension DistritoPresenter: DistritoPresenterInPut {
    func entregarDistritos(_ distrito: [DistritoEntity]) {
        distritos = distrito
    }
}

extension DistritoPresenter: DistritoPresenterOutPut {
    func pedirDistritos() {
        interactor?.conseguirDistritos()
    }
    var distritosArray: [DistritoEntity] {
        get {
            distritos
        }
    }
    var distritosCount: Int {
        distritos.count
    }
    func pedirOfertaDistrito(_ index: Int) {
        router?.obtenerOfertaDistrito(distritos[index].nameDistrito)
    }
}

