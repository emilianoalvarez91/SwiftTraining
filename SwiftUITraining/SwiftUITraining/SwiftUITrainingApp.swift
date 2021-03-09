//
//  SwiftUITrainingApp.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 09/03/2021.
//

import SwiftUI

@main
struct SwiftUITrainingApp: App {

  let planetService = PlanetService()

  var body: some Scene {
    WindowGroup {
      PlanetList(planetService: PlanetService())
    }
  }
}
