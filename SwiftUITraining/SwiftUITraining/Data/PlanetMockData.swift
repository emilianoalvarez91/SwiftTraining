//
//  PlanetMockData.swift
//  SwiftUITraining
//
//  Created by Houcem Souid on 09/03/2021.
//

import Foundation

struct PlanetMockData {
  static var planets: [Planet] {
    EntityLoader.load("planets.json")
  }
}
