//
//  UserProtocols.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 14/12/22.
//

import Foundation

protocol UserPresenterProtocol {
    var detailEntity: OfertaEntity { get }
    func obtenerUser(_ user: UserEntity)
}

protocol UserRouterProtocol: AnyObject {
    func irCupon(_ user: UserEntity,_ oferta: OfertaEntity)
}
