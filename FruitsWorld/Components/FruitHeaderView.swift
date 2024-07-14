//
//  FruitHeaderView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 14/7/24.
//

import SwiftUI

struct FruitHeaderView: View {
    @State private var isAnimating = false
    var fruit : FruitModel
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.3), radius: 8, x: 2, y: 2)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(height: 440)
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 440)) {
    FruitHeaderView(fruit: fruitsData[0])
}
