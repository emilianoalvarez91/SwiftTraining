//
//  PlanetDetail.swift
//  SwiftUITraining
//
//  Created by Fernanda Moya on 09/03/2021.
//

import SwiftUI
import SDWebImageSwiftUI

struct PlanetDetail: View {
    
    let imageURL: URL
    let title: String
    let shortDescription: String
    
    var body: some View {
        ZStack {
            Image("Sky")
                .resizable()
                .ignoresSafeArea()
            VStack {
                AnimatedImage(url: imageURL)
                  .resizable()
                  .frame(width: 250, height: 250)
                Text(title)
                  .font(Font.custom("Helvetica", size: 48))
                    .foregroundColor(.white)
                Text(shortDescription)
                  .font(Font.custom("Helvetica", size: 18))
                  .foregroundColor(.white)
                  .padding(.horizontal, 16.0)
                  .multilineTextAlignment(.center)
                Spacer()
            }
        }
        .padding(.top, -60.0)
    }
}

struct PlanetDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetail(imageURL: PlanetMockData.planets[1].imageUrl,
                     title: PlanetMockData.planets[1].name,
                     shortDescription: PlanetMockData.planets[1].shortDescription)
    }
}
