//
//  OnboardingView.swift
//  FruitsWorld
//
//  Created by Md Faizul karim on 13/7/24.
//

import SwiftUI

struct OnboardingView: View {
    var fruits = fruitsData
    var body: some View {
        
        TabView {
            ForEach(fruits) { fruit in
                FruitsCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

#Preview {
    OnboardingView()
}
