//
//  Networking.swift
//  ProyFreeCoupons
//
//  Created by Douglas Andreus Tafur Saldivar on 10/12/22.
//

import Foundation
//import Alamofire

protocol RemoteRepository: AnyObject {
    func fetchDistritos() -> [DistritoResponse]
    func fetchOfertas() -> [OfertarResponse]
}

class DistritoSocialAPI : RemoteRepository{
//    let kBaseUrl = "https://demo0607784.mockable.io/"
//    let kStatusOk = 200...299
    func fetchOfertas() -> [OfertarResponse] {
        []
    }
//
   func fetchDistritos() -> [DistritoResponse] {
//        let url = "\(kBaseUrl)distritos"
//        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: [DistritoResponse].self){response in
//            if let distrito = response.value {
//                print(distrito)
//            } else {
//                print(response.error?.responseCode ?? "No error")
//            }
//        }
       return []
   }
}

class DistritoMockAPI : RemoteRepository{
    func fetchOfertas() -> [OfertarResponse] {
        let resource = "oferta_success_01"
        if let url = Bundle.main.url(forResource: resource, withExtension: "json") {
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let result = try decoder.decode([OfertarResponse].self, from: data)
                return result
            } catch let error {
                print(error.localizedDescription)
            }
        }
        return[]
    }
    
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

/*
final class NetworkintgProvider {
    static let shared = NetworkintgProvider()

    private let kBaseUrl = "https://demo0607784.mockable.io/"
    private let kStatusOk = 200...299
    
    func getData(){
        let url = "\(kBaseUrl)distritos"
        
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: [Distrito].self){response in
            
            if let distrito = response.value{
                print(distrito)
                
            } else {
                print(response.error?.responseCode ?? "No error")
            }
        }
    }

}*/


/*private func getData(){
    let kBaseUrl = "https://demo0607784.mockable.io/"
    let kStatusOk = 200...299
    let url = "\(kBaseUrl)distritos"
    
    AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: [Distrito].self){response in
        
        if let distrito = response.value{
            print(distrito)
            
        } else {
            print(response.error?.responseCode ?? "No error")
        }
        self.distritos = response.value ?? []
        self.collectionView.reloadData()
        
        print(self.distritos)
    }
}*/
