//
//  FruitsDetailsView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct FruitsDetailsView: View {
    var fruit : FruitModel
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView(.vertical) {
                    
                    VStack(alignment: .center, spacing: 20) {
                        FruitHeaderView(fruit: fruit)
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text(fruit.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundStyle(fruit.gradientColors[1])
                                
                            Text(fruit.headline)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            
                            FruitNutrientsView(fruit: fruit)
                            
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                     }
                  }
                .ignoresSafeArea(edges: .top)
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    FruitsDetailsView(fruit: fruitsData[0])
}
