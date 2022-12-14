//
//  UserPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import Foundation
protocol UserPresenterProtocol {
    var detailEntity: OfertaEntity { get }
    func obtenerUser(_ user: UserEntity)
}

class UserPresenter {
    var view: UserViewProtocol?
    var detail: OfertaEntity?
    var router: UserRouterProtocol?
    
    init(detail: OfertaEntity?) {
        self.detail = detail
    }
}

extension UserPresenter: UserPresenterProtocol{
    
    var detailEntity: OfertaEntity {
        detail!
    }
    
    func obtenerUser(_ user: UserEntity) {
        router?.irCupon(user, detailEntity)
    }
}

