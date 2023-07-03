//
//  HomeView.swift
//  WeatherApp
//
//  Created by Prajna P on 02/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var toggle: Bool = false
    var body: some View {
        
        NavigationView {
            ZStack (alignment: .bottom){
                Image("background_android")
                    .resizable()
                    .ignoresSafeArea()
                
                Rectangle()
                    .fill(.white.opacity(0.15))
                    .ignoresSafeArea()
                    .frame(maxWidth: .infinity , maxHeight: 70, alignment: .bottomTrailing)
                
                VStack {
                    HStack {
                        Image("icon_menu_white")
                        Spacer()
                        Image("logo")
                        Spacer()
                        NavigationLink {
                            SearchView()
                        } label: {
                            Image("icon_search_white")
                        }
                        
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.top, 2)
                    Spacer()
                    
                    VStack {
                        Text("Udupi, Karnataka")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        
                        HStack {
                            Text("Add to Favourite")
                                .font(.title3)
                                .foregroundColor(.white)
                            
                            Image("icon_favourite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25,height: 25)
                                .padding(.leading, 5)
                        }
                    }
                    .padding(.bottom, 80)
                    
                    VStack{
                        Image("icon_mostly_sunny_small")
                            .resizable()
                            .frame(width: 100, height: 100)
                        
                        HStack {
                            Text("31")
                                .font(.system(size: 42))
                                .fontWeight(.semibold)
                            .foregroundColor(.white)
                            
                            Toggle(isOn: $toggle)
                            {
                                Text("")
                            }
                                .toggleStyle(CustomToggleStyle())
                        }
                    }
                    Spacer()
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 5) {
                            HStack {
                                Image("icon_temperature_info")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                VStack (alignment: .leading) {
                                    Text("22-26")
                                        .foregroundColor(.white)
                                    Text("Min-Max")
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                            
                            HStack {
                                Image("icon_temperature_info")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                VStack (alignment: .leading) {
                                    Text("22-26")
                                        .foregroundColor(.white)
                                    Text("Min-Max")
                                        .foregroundColor(.white)
                                }
                            }
                            
                            Spacer()
                            
                            HStack {
                                Image("icon_temperature_info")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                VStack (alignment: .leading) {
                                    Text("22-26")
                                        .foregroundColor(.white)
                                    Text("Min-Max")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .ignoresSafeArea()
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
