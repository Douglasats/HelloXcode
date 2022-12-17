//
//  DistritoEntity.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

struct DistritoEntity {
    let nameDistrito: String
    
    static func make(_ distritos: [DistritoResponse]) -> [DistritoEntity]{
        return distritos.map({DistritoEntity(nameDistrito: $0.nameDistrito)})
    }
}
