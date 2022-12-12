//
//  OfertaResponse.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 12/12/22.
//

import Foundation

struct OfertarResponse : Decodable{
    let valor: Int
    let categoria: String
    let imgCat: String
    let tienda: String
    let distrito: String
}
