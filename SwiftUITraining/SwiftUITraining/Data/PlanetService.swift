//
//  PlanetService.swift
//  SwiftUITraining
//
//  Created by Fernanda Moya on 09/03/2021.
//

import Foundation
import Alamofire


struct PlanetService {
    let url = "https://y3fsc8hysh.execute-api.us-east-2.amazonaws.com/training/planets"
    
    func planets() {
        AF.request(url).responseDecodable(of: [Planet].self) { (response) in
            switch(response.result) {
            case .success(let planets):
                print(planets)
            case .failure(let error):
                print(error)
            }
        }
    }
}
