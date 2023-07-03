//
//  CelciusFahrenheitView.swift
//  WeatherApp
//
//  Created by Prajna P on 02/05/23.
//

import SwiftUI

struct CustomToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            Button {
                configuration.isOn.toggle()
            } label: {
                CelciusFahrenheitView(isOn: configuration.isOn)
            }
        }
    }
    
    struct CelciusFahrenheitView: View {
        var isOn = true
        var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                      .stroke(Color.white)
                      .frame(width: 100, height: 50)
                      .overlay(
                          ZStack {
                              RoundedRectangle(cornerRadius: 5)
                                    .fill(Color.white)
                                    .frame(width: 50, height: 49)
                              Text(isOn ? "°F" : "°C")
                                  .font(.title2)
                                  .foregroundColor(.red)
                          },
                          alignment: isOn ? .trailing : .leading
                          
                      )
                
                if isOn {
                    Text("°C")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.trailing, 50)
                } else {
                    Text("°F")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.leading, 50)
                }
            }
        }
    }
}



//struct CelciusFahrenheitView_Previews: PreviewProvider {
//    static var previews: some View {
//        CelciusFahrenheitView()
//            .previewLayout(.sizeThatFits)
//    }
//}
