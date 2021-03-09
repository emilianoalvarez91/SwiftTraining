//
//  Planet.swift
//  SwiftUITraining
//
//  Created by Houcem Souid on 09/03/2021.
//

import Foundation

struct Planet: Decodable {
  let id: String
  let name: String
  let shortDescription: String
  let imageUrl: URL
}
