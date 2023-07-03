//
//  SearchView.swift
//  WeatherApp
//
//  Created by Prajna P on 02/05/23.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                Image("icon_back_black")
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    
    @State var searchText = ""
    var body: some View {
        List {
            
        }
        .searchable(text: $searchText)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
