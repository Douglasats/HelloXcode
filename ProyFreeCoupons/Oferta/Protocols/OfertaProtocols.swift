//
//  OfertaProtocols.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 14/12/22.
//

import Foundation

protocol OfertaRouterProtocol {
    func obtenerDetalle(_ oferta: OfertaEntity)
}

protocol OfertaInteractorProtocol: AnyObject {
    func conseguirOfertas()
}

protocol OfertaPresenterInPut {
    func entregarOfertas(_ ofertas: [OfertaEntity])
}

protocol OfertaPresenterOutPut {
    func pedirOfertas()
    var distrito: String {get}
    var ofertaCount: Int { get }
    var ofertaFinal: [OfertaEntity] { get }
    func getDetail(_ index: Int)
    func oferFilter(_ text: String)
    
}

protocol OfertaViewProtocol: AnyObject {
}

