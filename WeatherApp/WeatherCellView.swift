//
//  WeatherCellView.swift
//  WeatherApp
//
//  Created by Prajna P on 04/05/23.
//

import SwiftUI

struct WeatherCellView: View {
    var body: some View {
        HStack {
            
            
            VStack {
                Text("Udupi, Karnataka")
                
                HStack {
                    Image("icon_mostly_sunny_small")
                    Text("31")
                    Text("Mostly Sunny")
                }
            }
            
            Image("icon_favourite_active")
        }
    }
}

struct WeatherCellView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCellView()
            .previewLayout(.sizeThatFits)
    }
}
