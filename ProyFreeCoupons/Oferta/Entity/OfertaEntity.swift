//
//  OfertaEntity.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

struct OfertaEntity{
    let valor: Int
    let categoria: String
    let imgCat: String
    let tienda: String
    let distrito: String
    let direccion: String
    
    static func make(_ ofertas: [OfertarResponse]) -> [OfertaEntity]{
        return ofertas.map({OfertaEntity(valor: $0.valor,categoria: $0.categoria,imgCat: $0.imgCat,
                                         tienda: $0.tienda,distrito: $0.distrito, direccion: $0.direccion)})
    }
}
