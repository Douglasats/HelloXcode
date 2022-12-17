//
//  CuponProtocols.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 14/12/22.
//

import Foundation

protocol CuponRouterProtocol: AnyObject {
    func goHome()
}

protocol CuponPresenterProtocol : AnyObject{
    var userCupon: UserEntity? { get }
    var ofertaCupon: OfertaEntity? { get }
    var numCupon: String? { get }
    func finalizar()
}


