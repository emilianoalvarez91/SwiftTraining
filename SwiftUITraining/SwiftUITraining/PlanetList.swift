//
//  PlanetList.swift
//  SwiftUITraining
//
//  Created by Stefan Gies on 09/03/2021.
//

import SwiftUI

struct PlanetList: View {

    var planets: [Planet]
    var body: some View {

      List(planets) { item in
        PlanetRow(imageURL: item.imageUrl,
                  title: item.name,
                shortDescription: item.shortDescription)
      }
    }
}

struct PlanetList_Previews: PreviewProvider {
    static var previews: some View {
      PlanetList(planets: PlanetMockData.planets)
    }
}
