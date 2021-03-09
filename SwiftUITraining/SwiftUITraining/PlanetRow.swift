//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 09/03/2021.
//

import SwiftUI

struct PlanetRow: View {

  var imageName: String
  var title: String
  var shortDescription: String

  var body: some View {

    HStack {
      Image(imageName)
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
    PlanetRow(imageName: "Mercury",
              title: "Mercury",
              shortDescription: "The Swiftest Planet")
      .previewLayout(.fixed(width: 350, height: 60))
  }
}
