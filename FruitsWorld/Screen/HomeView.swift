//
//  HomeView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct HomeView: View {
    let fruits = fruitsData
    var body: some View {
        NavigationStack {
            List(fruits) { fruit in
                NavigationLink {
                    
                } label: {
                    FruitRowView(fruit: fruit)
                }
            }
            .navigationTitle("Fruits")
            .toolbar() {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
