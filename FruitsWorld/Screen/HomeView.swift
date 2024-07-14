//
//  HomeView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var isShowingSettings = false
    let fruits = fruitsData
    
    var body: some View {
        NavigationStack {
            List(fruits) { fruit in
                NavigationLink {
                    FruitsDetailsView(fruit: fruit)
                } label: {
                    FruitRowView(fruit: fruit)
                }
            }
            .navigationTitle("Fruits")
            .toolbar() {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                       isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
