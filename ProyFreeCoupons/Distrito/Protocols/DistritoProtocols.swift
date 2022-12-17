//
//  DistritoProtocols.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 14/12/22.
//

import Foundation

protocol DistritoRouterProtocol: AnyObject{
    func obtenerOfertaDistrito(_ distrito: String)
}

protocol DistritoInteractorProtocol: AnyObject {
    func conseguirDistritos()
}

protocol DistritoPresenterInPut: AnyObject{
    func entregarDistritos(_ distrito: [DistritoEntity])
}

protocol DistritoPresenterOutPut: AnyObject{
    func pedirDistritos()
    var distritosCount: Int {get}
    var distritosArray: [DistritoEntity] { get}
    func pedirOfertaDistrito(_ index: Int)
    
}



