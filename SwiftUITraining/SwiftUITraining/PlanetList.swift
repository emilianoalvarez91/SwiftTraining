//
//  PlanetList.swift
//  SwiftUITraining
//
//  Created by Stefan Gies on 09/03/2021.
//

import SwiftUI

struct PlanetList: View {

  @State
  var planets: [Planet] = []

  let planetService: PlanetService

  var body: some View {

    List(planets) { item in
      PlanetRow(imageURL: item.imageUrl,
                title: item.name,
                shortDescription: item.shortDescription)
    }.onAppear {
      planetService.planets { (planets) in
        self.planets = planets
      }
    }

  }
}

struct PlanetList_Previews: PreviewProvider {
  static var previews: some View {
    PlanetList(planetService: PlanetService())
  }
}
