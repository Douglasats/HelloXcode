//
//  DistritoProtocols.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 14/12/22.
//

import Foundation

protocol DistritoRouterProtocol{
    func obtenerOfertaDistrito(_ distrito: String)
}

protocol DistritoInteractorProtocol {
    func conseguirDistritos()
}

protocol DistritoPresenterInPut{
    func entregarDistritos(_ distrito: [DistritoEntity])
}

protocol DistritoPresenterOutPut{
    func pedirDistritos()
    var distritosCount: Int {get}
    var distritosArray: [DistritoEntity] { get}
    func pedirOfertaDistrito(_ index: Int)
    
}



