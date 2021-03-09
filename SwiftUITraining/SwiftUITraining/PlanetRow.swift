//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 09/03/2021.
//

import SwiftUI

struct PlanetRow: View {
    var body: some View {
      HStack {
        Image("Mercury")
          .resizable()
          .frame(width: 60, height: 60)
        VStack(alignment: .leading) {
          Text("Mercury")
            .font(Font.custom("Helvetica", size: 20))
          Text("The Swiftest Planet")
            .font(Font.custom("Helvetica", size: 13))
            .foregroundColor(.gray)
        }
        Spacer()
      }
    }
}

struct PlanetRow_Previews: PreviewProvider {
    static var previews: some View {
        PlanetRow()
            .previewLayout(.fixed(width: 350, height: 60))
    }
}
