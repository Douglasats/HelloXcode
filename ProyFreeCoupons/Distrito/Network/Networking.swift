//
//  Networking.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation

protocol RemoteRepository {
    func fetchDistritos() -> [DistritoResponse]
}

class DistritoSocialAPI : RemoteRepository{
    func fetchDistritos() -> [DistritoResponse] {
        []
    }
}

class DistritoMockAPI : RemoteRepository{
    func fetchDistritos() -> [DistritoResponse] {
        let resource = "distrito_success_01"
        if let url = Bundle.main.url(forResource: resource, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                let result = try decoder.decode([DistritoResponse].self, from: data)
                return result
            } catch let error {
                print(error.localizedDescription)
            }
        }
        return[]
    }
}

