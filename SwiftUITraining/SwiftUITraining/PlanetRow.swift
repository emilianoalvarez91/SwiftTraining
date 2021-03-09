//
//  ContentView.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 09/03/2021.
//

import SwiftUI

struct PlanetRow: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Mercury").font(Font.custom("Helvetica", size: 20))
        Text("The Swiftest Planet")
      }
    }
}

struct PlanetRow_Previews: PreviewProvider {
    static var previews: some View {
        PlanetRow()
    }
}
