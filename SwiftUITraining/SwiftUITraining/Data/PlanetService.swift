//
//  PlanetService.swift
//  SwiftUITraining
//
//  Created by Fernanda Moya on 09/03/2021.
//

import Foundation
import Alamofire

protocol PlanetServiceProtocol {
  func planets(completion: @escaping ([Planet]) -> Void)
}

struct PlanetService: PlanetServiceProtocol {
  let url = "https://y3fsc8hysh.execute-api.us-east-2.amazonaws.com/training/planets"

  func planets(completion: @escaping ([Planet]) -> Void) {
    AF.request(url).responseDecodable(of: [Planet].self) { (response) in
      switch(response.result) {
      case .success(let planets):
        completion(planets)
      case .failure(let error):
        completion([])
      }
    }
  }
}

struct StubPlanetServiceSucceed: PlanetServiceProtocol {
  func planets(completion: @escaping ([Planet]) -> Void) {
    completion(PlanetMockData.planets)
  }
}

struct StubPlanetServiceFail: PlanetServiceProtocol {
  func planets(completion: @escaping ([Planet]) -> Void) {
    completion([])
  }
}
