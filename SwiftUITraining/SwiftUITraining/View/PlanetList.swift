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

  let planetService: PlanetServiceProtocol

  var body: some View {
    NavigationView {
      List(planets) { item in
        NavigationLink(destination: PlanetDetail(imageURL: item.imageUrl, title: item.name, shortDescription: item.shortDescription) ) {
          PlanetRow(imageURL: item.imageUrl,
                    title: item.name,
                    shortDescription: item.shortDescription)
        }
      }.onAppear {
        planetService.planets { (planets) in
          self.planets = planets
        }
      }.navigationTitle("Planets")
    }

  }
}

struct PlanetList_Previews: PreviewProvider {
  static var previews: some View {
    PlanetList(planetService: StubPlanetServiceFail())
      .previewDisplayName("Failing one")
    PlanetList(planetService: StubPlanetServiceSucceed())
      .previewDisplayName("Succeeding one")
  }
}
