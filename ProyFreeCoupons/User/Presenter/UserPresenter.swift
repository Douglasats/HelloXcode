//
//  UserPresenter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 13/12/22.
//

import Foundation
protocol UserPresenterProtocol {
    var detailEntity: OfertaEntity { get }
}

class UserPresenter {
    var view: UserViewProtocol?
    var detail: OfertaEntity?
    
    init(detail: OfertaEntity?) {
        self.detail = detail
    }
}

extension UserPresenter: UserPresenterProtocol{
    var detailEntity: OfertaEntity {
        detail!
    }
}

