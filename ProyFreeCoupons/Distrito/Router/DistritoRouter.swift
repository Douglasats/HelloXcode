//
//  DistritoRouter.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation
protocol DistritoRouterProtocol{
    //func llamaPresenter()
}

class DistritoRouter{
    
    let presenter: DistritoPresenterProtocol?
    
    
    required init(presenter: DistritoPresenterProtocol?) {
        self.presenter = presenter
    }
    
}

