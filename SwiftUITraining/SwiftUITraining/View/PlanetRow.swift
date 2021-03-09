//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 09/03/2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetRow: View {

  let imageURL: URL
  let title: String
  let shortDescription: String

  var body: some View {
    HStack {
      AnimatedImage(url: imageURL)
        .resizable()
        .frame(width: 60, height: 60)
      VStack(alignment: .leading) {
        Text(title)
          .font(Font.custom("Helvetica", size: 20))
        Text(shortDescription)
          .font(Font.custom("Helvetica", size: 13))
          .foregroundColor(.gray)
      }
      Spacer()
    }
  }
}

struct PlanetRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      PlanetRow(imageURL: PlanetMockData.planets[0].imageUrl,
                title: PlanetMockData.planets[0].name,
                shortDescription: PlanetMockData.planets[0].shortDescription)
        .previewLayout(.fixed(width: 350, height: 60))
        .previewDisplayName("Mercury") // changes the name of preview title

      PlanetRow(imageURL: PlanetMockData.planets[1].imageUrl,
                title: PlanetMockData.planets[1].name,
                shortDescription: PlanetMockData.planets[1].shortDescription)
        .previewLayout(.fixed(width: 350, height: 60))
        .previewDisplayName("Jupiter")

    }
  }
}
